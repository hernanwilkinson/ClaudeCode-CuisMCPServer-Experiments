package surveycrawler;

import java.util.Random;

public class SurveyCrawler {

    private Point position;
    private CrawlerFacing facing;
    private final Sonar sonar;
    private final Random random;
    private CrawlerRun run;
    private CrawlerCommand lastCommand;

    // instance creation

    public static SurveyCrawler atFacing(Point aPosition, String aFacingName) {
        return atFacingWithSonar(aPosition, aFacingName, new FirmSandSonar());
    }

    public static SurveyCrawler atFacingWithSonar(Point aPosition, String aFacingName, Sonar aSonar) {
        return atFacingWithSonarAndRandom(aPosition, aFacingName, aSonar, new Random());
    }

    public static SurveyCrawler atFacingWithSonarAndRandom(Point aPosition, String aFacingName, Sonar aSonar, Random aRandom) {
        return new SurveyCrawler(aPosition, CrawlerFacing.facing(aFacingName), aSonar, aRandom);
    }

    public static String invalidFacingErrorDescription() {
        return "Invalid facing";
    }

    public static int siltSlideLimit() {
        return 10;
    }

    // initialization

    private SurveyCrawler(Point aPosition, CrawlerFacing aFacing, Sonar aSonar, Random aRandom) {
        position = aPosition;
        facing = aFacing;
        sonar = aSonar;
        random = aRandom;
        run = new UnguardedRun();
        lastCommand = new InvalidCommand();
    }

    // exceptions

    public String invalidCommandErrorDescription() {
        return "Invalid command";
    }

    public String boulderFoundErrorDescription() {
        return "Boulder found";
    }

    public String siltFoundInGuardedRunErrorDescription() {
        return "Silt found during a guarded run";
    }

    public String guardedRunInsideGuardedRunErrorDescription() {
        return "Can not start a guarded run inside a guarded run";
    }

    public String unfinishedGuardedRunErrorDescription() {
        return "Unfinished guarded run";
    }

    public void signalInvalidCommand() {
        throw new RuntimeException(invalidCommandErrorDescription());
    }

    public void signalBoulderFound() {
        throw new RuntimeException(boulderFoundErrorDescription());
    }

    public void signalSiltFound() {
        throw new RuntimeException(siltFoundInGuardedRunErrorDescription());
    }

    public void signalCanNotStartGuardedRunInsideGuardedRun() {
        throw new RuntimeException(guardedRunInsideGuardedRunErrorDescription());
    }

    public void signalUnfinishedGuardedRun() {
        throw new RuntimeException(unfinishedGuardedRunErrorDescription());
    }

    // facing

    public void faceRight() {
        facing = new CrawlerFacingRight();
    }

    public void faceUp() {
        facing = new CrawlerFacingUp();
    }

    public void faceDown() {
        facing = new CrawlerFacingDown();
    }

    public void faceLeft() {
        facing = new CrawlerFacingLeft();
    }

    public void turnCounterClockwise() {
        turn(CrawlerTurn.counterClockwise());
    }

    public void turnClockwise() {
        turn(CrawlerTurn.clockwise());
    }

    public void turnFacingCounterClockwise() {
        facing.turnCounterClockwise(this);
    }

    public void turnFacingClockwise() {
        facing.turnClockwise(this);
    }

    public void applyTurn(CrawlerTurn aTurn) {
        aTurn.applyTo(this);
        run.register(aTurn);
    }

    private void turn(CrawlerTurn aTurn) {
        groundAt(position).turnCrawler(this, aTurn);
    }

    // testing

    public boolean isAtFacing(Point aPosition, String aFacingName) {
        return position.equals(aPosition) && facing.isFacing(aFacingName);
    }

    // sensing

    private Ground groundAt(Point aPosition) {
        return sonar.groundAt(aPosition);
    }

    // moving

    public void retreat() {
        facing.retreat(this);
    }

    public void advance() {
        facing.advance(this);
    }

    public void moveRight() {
        moveTowards(new Point(1, 0));
    }

    public void moveLeft() {
        moveTowards(new Point(-1, 0));
    }

    public void moveUp() {
        moveTowards(new Point(0, 1));
    }

    public void moveDown() {
        moveTowards(new Point(0, -1));
    }

    private void moveTowards(Point aDirection) {
        groundAt(position.plus(aDirection)).moveCrawler(this, aDirection);
    }

    public void moveOneCellTowards(Point aDirection) {
        move(aDirection, 1);
    }

    public void slideTowards(Point aDirection) {
        run.slideOn(this, aDirection);
    }

    public void slide(Point aDirection) {
        move(aDirection, random.nextInt(siltSlideLimit()) + 1);
    }

    public void changePositionBy(Point aDisplacement) {
        position = position.plus(aDisplacement);
    }

    private void move(Point aDirection, int aNumberOfCells) {
        CrawlerAction aMove = new CrawlerMove(aDirection, aNumberOfCells);
        aMove.applyTo(this);
        run.register(aMove);
    }

    // guarded run

    public void startGuardedRun() {
        run.startGuardedRunOn(this);
    }

    public void endGuardedRun() {
        run.endGuardedRunOn(this);
    }

    public void guardedRunStarted() {
        run = new GuardedRun();
    }

    public void guardedRunEnded() {
        run = new UnguardedRun();
    }

    // command processing

    public void process(String aSequenceOfCommands) {
        lastCommand = new InvalidCommand();
        try {
            for (char aCommand : aSequenceOfCommands.toCharArray()) {
                processCommand(aCommand);
            }
            run.finishOn(this);
        } catch (RuntimeException anError) {
            run.undoOn(this);
            run = new UnguardedRun();
            throw anError;
        }
    }

    public void processCommand(char aCommand) {
        CrawlerCommand.commandFor(aCommand).executeOn(this);
    }

    public void repeatLastCommand(int aNumberOfRepetitions) {
        lastCommand.repeatOn(this, aNumberOfRepetitions);
    }

    public void lastCommandIs(CrawlerCommand aCommand) {
        lastCommand = aCommand;
    }
}
