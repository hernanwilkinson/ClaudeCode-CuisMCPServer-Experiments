package surveycrawler;

public class SurveyCrawler {

    private Point position;
    private CrawlerFacing facing;
    private final Sonar sonar;
    private CrawlerRun currentRun;
    private CommandToRepeat commandToRepeat;

    // instance creation

    public static SurveyCrawler atFacing(Point aPosition, String aFacingName) {
        return atFacingSonar(aPosition, aFacingName, new FirmSandSonar());
    }

    public static SurveyCrawler atFacingSonar(Point aPosition, String aFacingName, Sonar aSonar) {
        return new SurveyCrawler(aPosition, CrawlerFacing.facing(aFacingName), aSonar);
    }

    public static String invalidFacingErrorDescription() {
        return "Invalid facing";
    }

    // exceptions

    public String invalidCommandErrorDescription() {
        return "Invalid command";
    }

    public String boulderFoundErrorDescription() {
        return "Can not move to nor turn on a boulder";
    }

    public String unpredictableMovementErrorDescription() {
        return "Can not move on silt during a guarded run";
    }

    public String guardedRunAlreadyStartedErrorDescription() {
        return "Can not start a guarded run inside a guarded run";
    }

    public String guardedRunNotStartedErrorDescription() {
        return "Can not end a guarded run that was not started";
    }

    public String guardedRunNotFinishedErrorDescription() {
        return "Guarded run was not finished";
    }

    public void signalInvalidCommand() {
        throw new RuntimeException(invalidCommandErrorDescription());
    }

    public void signalBoulderFound() {
        throw new RuntimeException(boulderFoundErrorDescription());
    }

    public void signalUnpredictableMovement() {
        throw new RuntimeException(unpredictableMovementErrorDescription());
    }

    public void signalGuardedRunAlreadyStarted() {
        throw new RuntimeException(guardedRunAlreadyStartedErrorDescription());
    }

    public void signalGuardedRunNotStarted() {
        throw new RuntimeException(guardedRunNotStartedErrorDescription());
    }

    public void signalGuardedRunNotFinished() {
        throw new RuntimeException(guardedRunNotFinishedErrorDescription());
    }

    // initialization

    private SurveyCrawler(Point aPosition, CrawlerFacing aFacing, Sonar aSonar) {
        position = aPosition;
        facing = aFacing;
        sonar = aSonar;
        currentRun = new NormalRun();
        commandToRepeat = new NoCommandToRepeat();
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
        groundAtCurrentPosition().turnCrawlerCounterClockwise(this);
    }

    public void turnClockwise() {
        groundAtCurrentPosition().turnCrawlerClockwise(this);
    }

    public void turnFacingCounterClockwise() {
        rotateCounterClockwise();
        currentRun.registerMovement(new CounterClockwiseTurn());
    }

    public void turnFacingClockwise() {
        rotateClockwise();
        currentRun.registerMovement(new ClockwiseTurn());
    }

    public void rotateCounterClockwise() {
        facing.turnCounterClockwise(this);
    }

    public void rotateClockwise() {
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

    public boolean isRepetitionCommand(char aCommand) {
        return Character.isDigit(aCommand);
    }

    public boolean isStartOfGuardedRunCommand(char aCommand) {
        return aCommand == '(';
    }

    public boolean isEndOfGuardedRunCommand(char aCommand) {
        return aCommand == ')';
    }

    // sensing

    private Ground groundAtCurrentPosition() {
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
        sonar.groundAt(position.plus(aDirection)).moveCrawlerTowards(this, aDirection);
    }

    public void moveOneCellTowards(Point aDirection) {
        changePositionTowards(aDirection);
        currentRun.registerMovement(new Displacement(aDirection));
    }

    public void moveUnpredictablyTowards(Point aDirection, int aNumberOfCells) {
        currentRun.moveUnpredictably(this, aDirection, aNumberOfCells);
    }

    public void changePositionTowards(Point aDirection) {
        position = position.plus(aDirection);
    }

    // guarded runs

    public void beginGuardedRun() {
        currentRun = new GuardedRun();
    }

    public void finishGuardedRun() {
        currentRun = new NormalRun();
    }

    private void abortRun() {
        currentRun.undoMovementsOn(this);
        currentRun = new NormalRun();
        forgetCommandToRepeat();
    }

    // command processing

    public void process(String aSequenceOfCommands) {
        try {
            for (char aCommand : aSequenceOfCommands.toCharArray()) {
                processCommand(aCommand);
            }
            currentRun.assertIsFinished(this);
        } catch (RuntimeException anError) {
            abortRun();
            throw anError;
        }
    }

    public void processCommand(char aCommand) {
        if (isRepetitionCommand(aCommand)) {
            repeatLastCommand(aCommand);
            return;
        }
        if (isStartOfGuardedRunCommand(aCommand)) {
            currentRun.startGuardedRun(this);
            forgetCommandToRepeat();
            return;
        }
        if (isEndOfGuardedRunCommand(aCommand)) {
            currentRun.endGuardedRun(this);
            forgetCommandToRepeat();
            return;
        }

        executeCommand(aCommand);
        rememberCommandToRepeat(aCommand);
    }

    public void executeCommand(char aCommand) {
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

    // command repetition

    public static int additionalRepetitions() {
        return 2;
    }

    public static int numberOfRepetitionsFor(char aDigit) {
        return Character.digit(aDigit, 10) + additionalRepetitions();
    }

    private void repeatLastCommand(char aDigit) {
        commandToRepeat.repeatOn(this, numberOfRepetitionsFor(aDigit));
        forgetCommandToRepeat();
    }

    private void rememberCommandToRepeat(char aCommand) {
        commandToRepeat = new LastCommandToRepeat(aCommand);
    }

    private void forgetCommandToRepeat() {
        commandToRepeat = new NoCommandToRepeat();
    }
}
