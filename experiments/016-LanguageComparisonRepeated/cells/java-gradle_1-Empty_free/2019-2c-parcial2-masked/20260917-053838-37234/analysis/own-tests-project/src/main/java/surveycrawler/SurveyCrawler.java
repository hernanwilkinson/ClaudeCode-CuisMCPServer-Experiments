package surveycrawler;

public class SurveyCrawler {

    private Point position;
    private CrawlerFacing facing;
    private final Sonar sonar;
    private RunMode runMode;
    private Runnable lastRepeatableCommand;

    // instance creation

    public static SurveyCrawler atFacingUsing(Point aPosition, String aFacingName, Sonar aSonar) {
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

    public String invalidRepetitionErrorDescription() {
        return "Repetition must follow a movement or turning command";
    }

    public void signalInvalidRepetition() {
        throw new RuntimeException(invalidRepetitionErrorDescription());
    }

    public String boulderFoundErrorDescription() {
        return "Boulder found";
    }

    public void signalBoulderFound() {
        throw new RuntimeException(boulderFoundErrorDescription());
    }

    public String siltFoundDuringGuardedRunErrorDescription() {
        return "Silt found during guarded run";
    }

    public void signalSiltFoundDuringGuardedRun() {
        throw new RuntimeException(siltFoundDuringGuardedRunErrorDescription());
    }

    public String guardedRunAlreadyStartedErrorDescription() {
        return "Guarded run already started";
    }

    public void signalGuardedRunAlreadyStarted() {
        throw new RuntimeException(guardedRunAlreadyStartedErrorDescription());
    }

    public String guardedRunNotStartedErrorDescription() {
        return "Guarded run not started";
    }

    public void signalGuardedRunNotStarted() {
        throw new RuntimeException(guardedRunNotStartedErrorDescription());
    }

    public String guardedRunNotFinishedErrorDescription() {
        return "Guarded run not finished";
    }

    public void signalGuardedRunNotFinished() {
        throw new RuntimeException(guardedRunNotFinishedErrorDescription());
    }

    // initialization

    private SurveyCrawler(Point aPosition, CrawlerFacing aFacing, Sonar aSonar) {
        position = aPosition;
        facing = aFacing;
        sonar = aSonar;
        runUnguarded();
        forgetLastRepeatableCommand();
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
        sonar.groundTypeAt(position).assertCanTurn(this);
        facing.turnCounterClockwise(this);
        runMode.recordUndo(() -> facing.turnClockwise(this));
    }

    public void turnClockwise() {
        sonar.groundTypeAt(position).assertCanTurn(this);
        facing.turnClockwise(this);
        runMode.recordUndo(() -> facing.turnCounterClockwise(this));
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

    public boolean isStartGuardedRunCommand(char aCommand) {
        return aCommand == '(';
    }

    public boolean isEndGuardedRunCommand(char aCommand) {
        return aCommand == ')';
    }

    // moving

    public void retreat() {
        facing.retreat(this);
    }

    public void moveRight() {
        moveTowards(new Point(1, 0));
    }

    public void advance() {
        facing.advance(this);
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

    public void moveTowards(Point aDirection) {
        sonar.groundTypeAt(position.plus(aDirection)).moveTowards(this, aDirection);
    }

    public void displaceBy(Point aDisplacement) {
        position = position.plus(aDisplacement);
        runMode.recordUndo(() -> position = position.minus(aDisplacement));
    }

    public void slideBy(Point aDisplacement) {
        displaceBy(aDisplacement);
        runMode.assertCanSlide(this);
    }

    // guarded run

    public void runGuarded() {
        runMode = new GuardedRun();
    }

    public void runUnguarded() {
        runMode = new UnguardedRun();
    }

    // command processing

    public void process(String aSequenceOfCommands) {
        forgetLastRepeatableCommand();
        try {
            for (char aCommand : aSequenceOfCommands.toCharArray()) {
                processCommand(aCommand);
            }
            runMode.assertFinished(this);
        } catch (RuntimeException anError) {
            runMode.undoMovements();
            runUnguarded();
            throw anError;
        }
    }

    public void processCommand(char aCommand) {
        if (isAdvanceCommand(aCommand)) {
            processRepeatableCommand(this::advance);
            return;
        }
        if (isRetreatCommand(aCommand)) {
            processRepeatableCommand(this::retreat);
            return;
        }
        if (isTurnClockwiseCommand(aCommand)) {
            processRepeatableCommand(this::turnClockwise);
            return;
        }
        if (isTurnCounterClockwiseCommand(aCommand)) {
            processRepeatableCommand(this::turnCounterClockwise);
            return;
        }

        Runnable commandToRepeat = lastRepeatableCommand;
        forgetLastRepeatableCommand();

        if (isRepetitionCommand(aCommand)) {
            repeat(commandToRepeat, Character.digit(aCommand, 10) + 2);
            return;
        }
        if (isStartGuardedRunCommand(aCommand)) {
            runMode.startGuardedRun(this);
            return;
        }
        if (isEndGuardedRunCommand(aCommand)) {
            runMode.endGuardedRun(this);
            return;
        }

        signalInvalidCommand();
    }

    public void processRepeatableCommand(Runnable aCommand) {
        lastRepeatableCommand = aCommand;
        aCommand.run();
    }

    public void repeat(Runnable aCommand, int numberOfTimes) {
        for (int i = 0; i < numberOfTimes; i++) {
            aCommand.run();
        }
    }

    public void forgetLastRepeatableCommand() {
        lastRepeatableCommand = this::signalInvalidRepetition;
    }
}
