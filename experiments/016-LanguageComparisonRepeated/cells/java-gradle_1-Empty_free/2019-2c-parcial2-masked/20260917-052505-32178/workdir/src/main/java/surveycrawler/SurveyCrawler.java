package surveycrawler;

import java.util.Random;

public class SurveyCrawler {

    private static final int MAXIMUM_SLIDING_DISTANCE = 10;
    private static final int REPETITIONS_ADDED_TO_DIGIT = 2;
    private static final char NO_COMMAND = '\0';

    private Point position;
    private CrawlerFacing facing;
    private final Sonar sonar;
    private final Random random;
    private CrawlerRunMode runMode;

    // instance creation

    public static SurveyCrawler atFacing(Point aPosition, String aFacingName) {
        return atFacingWithSonar(aPosition, aFacingName, new FirmSandEverywhereSonar());
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

    // exceptions

    public String invalidCommandErrorDescription() {
        return "Invalid command";
    }

    public void signalInvalidCommand() {
        throw new RuntimeException(invalidCommandErrorDescription());
    }

    public String invalidRepetitionErrorDescription() {
        return "Only a, t, h and g commands can be repeated";
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

    public String nestedGuardedRunErrorDescription() {
        return "Can not start a guarded run inside another guarded run";
    }

    public void signalNestedGuardedRun() {
        throw new RuntimeException(nestedGuardedRunErrorDescription());
    }

    public String guardedRunNotStartedErrorDescription() {
        return "Can not finish a guarded run that was not started";
    }

    public void signalGuardedRunNotStarted() {
        throw new RuntimeException(guardedRunNotStartedErrorDescription());
    }

    public String unfinishedGuardedRunErrorDescription() {
        return "Guarded run was not finished";
    }

    public void signalUnfinishedGuardedRun() {
        throw new RuntimeException(unfinishedGuardedRunErrorDescription());
    }

    // initialization

    private SurveyCrawler(Point aPosition, CrawlerFacing aFacing, Sonar aSonar, Random aRandom) {
        position = aPosition;
        facing = aFacing;
        sonar = aSonar;
        random = aRandom;
        runMode = new NormalRun();
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
        groundTypeAt(position).assertCanTurn(this);
        facing.turnCounterClockwise(this);
        runMode.recordUndo(() -> facing.turnClockwise(this));
    }

    public void turnClockwise() {
        groundTypeAt(position).assertCanTurn(this);
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

    public boolean isStartGuardedRunCommand(char aCommand) {
        return aCommand == '(';
    }

    public boolean isFinishGuardedRunCommand(char aCommand) {
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
        groundTypeAt(position.plus(aDirection)).moveTowards(this, aDirection);
    }

    public void stepTowards(Point aDisplacement) {
        position = position.plus(aDisplacement);
        runMode.recordUndo(() -> position = position.plus(aDisplacement.negated()));
    }

    public void slideTowards(Point aDirection) {
        runMode.slideTowards(this, aDirection);
    }

    public int slidingDistance() {
        return random.nextInt(MAXIMUM_SLIDING_DISTANCE) + 1;
    }

    private GroundType groundTypeAt(Point aPosition) {
        return sonar.groundTypeAt(aPosition);
    }

    // guarded run

    public void runGuarded() {
        runMode = new GuardedRun();
    }

    public void runNormally() {
        runMode = new NormalRun();
    }

    // command processing

    public void process(String aSequenceOfCommands) {
        try {
            processAll(aSequenceOfCommands);
        } catch (RuntimeException anError) {
            runMode.recoverFromError(this);
            throw anError;
        }
    }

    private void processAll(String aSequenceOfCommands) {
        char lastCommand = NO_COMMAND;
        for (char aCommand : aSequenceOfCommands.toCharArray()) {
            if (isRepetitionCommand(aCommand)) {
                repeat(lastCommand, Character.digit(aCommand, 10) + REPETITIONS_ADDED_TO_DIGIT);
            } else {
                processCommand(aCommand);
            }
            lastCommand = aCommand;
        }
        runMode.assertFinished(this);
    }

    public void repeat(char aCommand, int aNumberOfTimes) {
        if (!isRepeatableCommand(aCommand)) {
            signalInvalidRepetition();
        }
        for (int i = 0; i < aNumberOfTimes; i++) {
            processCommand(aCommand);
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
        if (isStartGuardedRunCommand(aCommand)) {
            runMode.startGuardedRun(this);
            return;
        }
        if (isFinishGuardedRunCommand(aCommand)) {
            runMode.finishGuardedRun(this);
            return;
        }

        signalInvalidCommand();
    }
}
