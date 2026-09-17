package surveycrawler;

public class SurveyCrawler {

    private Point position;
    private CrawlerFacing facing;
    private final Sonar sonar;
    private CrawlerRun run;

    // instance creation

    public static SurveyCrawler atFacing(Point aPosition, String aFacingName) {
        return atFacingWithSonar(aPosition, aFacingName, new FirmSandSonar());
    }

    public static SurveyCrawler atFacingWithSonar(Point aPosition, String aFacingName, Sonar aSonar) {
        return new SurveyCrawler(aPosition, CrawlerFacing.facing(aFacingName), aSonar);
    }

    public static String invalidFacingErrorDescription() {
        return "Invalid facing";
    }

    // exceptions

    public String invalidCommandErrorDescription() {
        return "Invalid command";
    }

    public String canNotMoveToBoulderErrorDescription() {
        return "Can not move to a boulder";
    }

    public String canNotTurnOnBoulderErrorDescription() {
        return "Can not turn on a boulder";
    }

    public String canNotSlideDuringGuardedRunErrorDescription() {
        return "Can not slide on silt during a guarded run";
    }

    public String canNotStartGuardedRunDuringGuardedRunErrorDescription() {
        return "Can not start a guarded run during a guarded run";
    }

    public String unfinishedGuardedRunErrorDescription() {
        return "Guarded run was not finished";
    }

    public void signalInvalidCommand() {
        throw new RuntimeException(invalidCommandErrorDescription());
    }

    public void signalCanNotMoveToBoulder() {
        throw new RuntimeException(canNotMoveToBoulderErrorDescription());
    }

    public void signalCanNotTurnOnBoulder() {
        throw new RuntimeException(canNotTurnOnBoulderErrorDescription());
    }

    public void signalCanNotSlideDuringGuardedRun() {
        throw new RuntimeException(canNotSlideDuringGuardedRunErrorDescription());
    }

    public void signalCanNotStartGuardedRunDuringGuardedRun() {
        throw new RuntimeException(canNotStartGuardedRunDuringGuardedRunErrorDescription());
    }

    public void signalUnfinishedGuardedRun() {
        throw new RuntimeException(unfinishedGuardedRunErrorDescription());
    }

    // initialization

    private SurveyCrawler(Point aPosition, CrawlerFacing aFacing, Sonar aSonar) {
        position = aPosition;
        facing = aFacing;
        sonar = aSonar;
        run = new UnguardedRun();
    }

    // facing

    public void faceRight() {
        faceTo(new CrawlerFacingRight());
    }

    public void faceUp() {
        faceTo(new CrawlerFacingUp());
    }

    public void faceDown() {
        faceTo(new CrawlerFacingDown());
    }

    public void faceLeft() {
        faceTo(new CrawlerFacingLeft());
    }

    public void faceTo(CrawlerFacing aFacing) {
        facing = aFacing;
    }

    public void turnCounterClockwise() {
        groundAtPosition().turnCrawlerCounterClockwise(this);
    }

    public void turnClockwise() {
        groundAtPosition().turnCrawlerClockwise(this);
    }

    public void turnFacingCounterClockwise() {
        facing.turnCounterClockwise(this);
    }

    public void turnFacingClockwise() {
        facing.turnClockwise(this);
    }

    // testing

    public boolean isAtFacing(Point aPosition, String aFacingName) {
        return position.equals(aPosition) && facing.isFacing(aFacingName);
    }

    public boolean isRetreatCommand(char aCommand) {
        return aCommand == 't';
    }

    public boolean isAdvanceCommand(char aCommand) {
        return aCommand == 'a';
    }

    public boolean isTurnCounterClockwiseCommand(char aCommand) {
        return aCommand == 'g';
    }

    public boolean isTurnClockwiseCommand(char aCommand) {
        return aCommand == 'h';
    }

    // sensing

    private Ground groundAtPosition() {
        return sonar.groundAt(position);
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

    public void moveUp() {
        moveTowards(new Point(0, 1));
    }

    public void moveDown() {
        moveTowards(new Point(0, -1));
    }

    public void moveLeft() {
        moveTowards(new Point(-1, 0));
    }

    private void moveTowards(Point aDirection) {
        Point aNewPosition = position.plus(aDirection);
        sonar.groundAt(aNewPosition).moveCrawlerTo(this, aNewPosition, aDirection);
    }

    public void moveTo(Point aNewPosition) {
        run.registerMove(aNewPosition.minus(position));
        position = aNewPosition;
    }

    public void slideTo(Silt aSilt, Point aNewPosition, Point aDirection) {
        run.slideOn(this, aSilt, aNewPosition, aDirection);
    }

    public void undoMove(Point aMove) {
        position = position.minus(aMove);
    }

    // guarded run

    public void startGuardedRun() {
        run.startGuardedRunOn(this);
    }

    public void enterGuardedRun() {
        run = new GuardedRun(facing);
    }

    public void endGuardedRun() {
        run = new UnguardedRun();
    }

    public void undoGuardedRun() {
        run.undoOn(this);
        run = new UnguardedRun();
    }

    // command processing

    public void process(String aSequenceOfCommands) {
        new CommandInterpreter(this, aSequenceOfCommands).process();
    }

    public void processCommand(char aCommand) {
        if (isAdvanceCommand(aCommand)) {
            advance();
            return;
        }
        if (isRetreatCommand(aCommand)) {
            retreat();
            return;
        }
        if (isTurnClockwiseCommand(aCommand)) {
            turnClockwise();
            return;
        }
        if (isTurnCounterClockwiseCommand(aCommand)) {
            turnCounterClockwise();
            return;
        }

        signalInvalidCommand();
    }
}
