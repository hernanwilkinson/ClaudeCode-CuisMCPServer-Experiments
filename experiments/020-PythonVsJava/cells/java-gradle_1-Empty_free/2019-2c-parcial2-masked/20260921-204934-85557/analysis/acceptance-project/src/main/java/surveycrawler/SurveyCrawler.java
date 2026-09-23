package surveycrawler;

public class SurveyCrawler {

    private Point position;
    private CrawlerFacing facing;
    private final Sonar sonar;
    private CrawlerRun run;
    private CrawlerCommand lastCommand;

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

    public void signalInvalidCommand() {
        throw new RuntimeException(invalidCommandErrorDescription());
    }

    // initialization

    private SurveyCrawler(Point aPosition, CrawlerFacing aFacing, Sonar aSonar) {
        position = aPosition;
        facing = aFacing;
        sonar = aSonar;
        run = new NormalRun();
        lastCommand = new InvalidCommand();
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
        turn(() -> facing.turnCounterClockwise(this), new TurnCounterClockwiseCommand());
    }

    public void turnClockwise() {
        turn(() -> facing.turnClockwise(this), new TurnClockwiseCommand());
    }

    private void turn(CrawlerTurn aTurn, CrawlerMovement aMovement) {
        groundAt(position).turn(aTurn);
        run.register(aMovement);
    }

    // testing

    public boolean isAtFacing(Point aPosition, String aFacingName) {
        return position.equals(aPosition) && facing.isFacing(aFacingName);
    }

    // moving

    public void retreat() {
        facing.retreat(this);
        run.register(new RetreatCommand());
    }

    public void advance() {
        facing.advance(this);
        run.register(new AdvanceCommand());
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
        SeabedGround aGround = groundAt(position.plus(aDirection));
        position = run.positionAfterMovingOn(aGround, position, aDirection);
    }

    // sonar

    private SeabedGround groundAt(Point aPosition) {
        return sonar.groundAt(aPosition);
    }

    // guarded run

    public void startGuardedRun() {
        run = run.startGuardedRun();
    }

    public void endGuardedRun() {
        run = run.endGuardedRunOn(this);
    }

    private void undoFailedRun() {
        CrawlerRun failedRun = run;
        run = new NormalRun();
        failedRun.undoOn(this);
    }

    // command processing

    public void process(String aSequenceOfCommands) {
        lastCommand = new InvalidCommand();
        try {
            for (char aCommand : aSequenceOfCommands.toCharArray()) {
                processCommand(aCommand);
            }
            run.assertIsFinished();
        } catch (RuntimeException anError) {
            undoFailedRun();
            throw anError;
        }
    }

    public void processCommand(char aCommand) {
        CrawlerCommand command = CrawlerCommand.commandFor(aCommand);
        command.executeOn(this);
        lastCommand = command;
    }

    public void repeatLastCommandTimes(int aNumberOfTimes) {
        lastCommand.repeatTimesOn(aNumberOfTimes, this);
    }
}
