package surveycrawler;

public class SurveyCrawler {

    public static final char noCommand = '\0';

    private static final int extraRepetitions = 2;

    private final Sonar sonar;
    private Point position;
    private CrawlerFacing facing;
    private CrawlerRun run;

    // instance creation

    public static SurveyCrawler atFacing(Point aPosition, String aFacingName) {
        return atFacingWithSonar(aPosition, aFacingName, SeabedSonar.firmSeabed());
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

    public String boulderFoundErrorDescription() {
        return "Boulder found";
    }

    public String canNotMoveOnSiltDuringGuardedRunErrorDescription() {
        return "Can not move on silt during a guarded run";
    }

    public String canNotStartGuardedRunInsideGuardedRunErrorDescription() {
        return "Can not start a guarded run inside another guarded run";
    }

    public String unfinishedGuardedRunErrorDescription() {
        return "Guarded run was not finished";
    }

    public String notStartedGuardedRunErrorDescription() {
        return "Can not end a guarded run that was not started";
    }

    public void signalInvalidCommand() {
        throw new RuntimeException(invalidCommandErrorDescription());
    }

    public void signalBoulderFound() {
        throw new RuntimeException(boulderFoundErrorDescription());
    }

    public void signalCanNotMoveOnSiltDuringGuardedRun() {
        throw new RuntimeException(canNotMoveOnSiltDuringGuardedRunErrorDescription());
    }

    public void signalCanNotStartGuardedRunInsideGuardedRun() {
        throw new RuntimeException(canNotStartGuardedRunInsideGuardedRunErrorDescription());
    }

    public void signalUnfinishedGuardedRun() {
        throw new RuntimeException(unfinishedGuardedRunErrorDescription());
    }

    public void signalNotStartedGuardedRun() {
        throw new RuntimeException(notStartedGuardedRunErrorDescription());
    }

    // initialization

    private SurveyCrawler(Point aPosition, CrawlerFacing aFacing, Sonar aSonar) {
        position = aPosition;
        facing = aFacing;
        sonar = aSonar;
        run = new NormalRun();
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
        groundTypeAtPosition().turnCrawler(this, this::turnCounterClockwiseRegisteringUndo);
    }

    public void turnClockwise() {
        groundTypeAtPosition().turnCrawler(this, this::turnClockwiseRegisteringUndo);
    }

    private void turnCounterClockwiseRegisteringUndo() {
        facing.turnCounterClockwise(this);
        run.registerUndoAction(() -> facing.turnClockwise(this));
    }

    private void turnClockwiseRegisteringUndo() {
        facing.turnClockwise(this);
        run.registerUndoAction(() -> facing.turnCounterClockwise(this));
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

    public boolean isStartOfGuardedRunCommand(char aCommand) {
        return aCommand == '(';
    }

    public boolean isEndOfGuardedRunCommand(char aCommand) {
        return aCommand == ')';
    }

    public boolean isRepetitionCommand(char aCommand) {
        return Character.isDigit(aCommand);
    }

    public boolean isRepeatableCommand(char aCommand) {
        return isAdvanceCommand(aCommand)
            || isRetreatCommand(aCommand)
            || isTurnClockwiseCommand(aCommand)
            || isTurnCounterClockwiseCommand(aCommand);
    }

    // sensing

    public GroundType groundTypeAtPosition() {
        return sonar.groundTypeAt(position);
    }

    public GroundType groundTypeInDirection(Point aDirection) {
        return sonar.groundTypeAt(position.plus(aDirection));
    }

    // moving

    public void retreat() {
        facing.retreat(this);
    }

    public void advance() {
        facing.advance(this);
    }

    public void moveRight() {
        moveInDirection(new Point(1, 0));
    }

    public void moveUp() {
        moveInDirection(new Point(0, 1));
    }

    public void moveDown() {
        moveInDirection(new Point(0, -1));
    }

    public void moveLeft() {
        moveInDirection(new Point(-1, 0));
    }

    public void moveInDirection(Point aDirection) {
        groundTypeInDirection(aDirection).moveCrawlerInDirection(this, aDirection);
    }

    public void slideInDirection(Point aDirection, SiltSlide aSlide) {
        run.slideOnSilt(this, aDirection, aSlide);
    }

    public void moveBy(Point aDisplacement) {
        changePositionBy(aDisplacement);
        run.registerUndoAction(() -> changePositionBy(aDisplacement.negated()));
    }

    private void changePositionBy(Point aDisplacement) {
        position = position.plus(aDisplacement);
    }

    // guarded run

    public void beginGuardedRun() {
        run = new GuardedRun();
    }

    public void finishGuardedRun() {
        run = new NormalRun();
    }

    // command processing

    public void process(String aSequenceOfCommands) {
        try {
            processCommands(aSequenceOfCommands);
            run.assertIsFinished(this);
        } catch (RuntimeException anError) {
            run.handleErrorOf(this);
            throw anError;
        }
    }

    private void processCommands(String aSequenceOfCommands) {
        char commandToRepeat = noCommand;
        for (char aCommand : aSequenceOfCommands.toCharArray()) {
            if (isRepetitionCommand(aCommand)) {
                repeat(commandToRepeat, aCommand);
                commandToRepeat = noCommand;
            } else {
                processCommand(aCommand);
                commandToRepeat = isRepeatableCommand(aCommand) ? aCommand : noCommand;
            }
        }
    }

    public void repeat(char aCommandToRepeat, char aRepetitionCommand) {
        if (aCommandToRepeat == noCommand) {
            signalInvalidCommand();
        }

        int repetitions = Character.digit(aRepetitionCommand, 10) + extraRepetitions;
        for (int repetition = 0; repetition < repetitions; repetition++) {
            processCommand(aCommandToRepeat);
        }
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
        if (isStartOfGuardedRunCommand(aCommand)) {
            run.startGuardedRun(this);
            return;
        }
        if (isEndOfGuardedRunCommand(aCommand)) {
            run.endGuardedRun(this);
            return;
        }

        signalInvalidCommand();
    }
}
