package surveycrawler;

import java.util.Random;

public class SurveyCrawler {

    public static final int SILT_SLIDING_LIMIT = 10;

    private Point position;
    private CrawlerFacing facing;
    private final Sonar sonar;
    private final Random random;
    private CrawlerRun run;
    private Runnable lastCommandRepetition;

    // instance creation

    public static SurveyCrawler atFacing(Point aPosition, String aFacingName) {
        return atFacingSensingWith(aPosition, aFacingName, new FirmSandOnlySonar(), new Random());
    }

    public static SurveyCrawler atFacingSensingWith(Point aPosition, String aFacingName, Sonar aSonar, Random aRandom) {
        return new SurveyCrawler(aPosition, CrawlerFacing.facing(aFacingName), aSonar, aRandom);
    }

    public static String invalidFacingErrorDescription() {
        return "Invalid facing";
    }

    // exceptions

    public String invalidCommandErrorDescription() {
        return "Invalid command";
    }

    public String invalidRepetitionErrorDescription() {
        return "Only a, t, h and g commands can be repeated";
    }

    public String boulderFoundErrorDescription() {
        return "Boulder found";
    }

    public String siltFoundDuringGuardedRunErrorDescription() {
        return "Silt found during guarded run";
    }

    public String nestedGuardedRunErrorDescription() {
        return "Can not start a guarded run inside another guarded run";
    }

    public String unfinishedGuardedRunErrorDescription() {
        return "Guarded run not finished";
    }

    public String guardedRunNotStartedErrorDescription() {
        return "Can not finish a guarded run that was not started";
    }

    public void signalInvalidCommand() {
        throw new RuntimeException(invalidCommandErrorDescription());
    }

    public void signalInvalidRepetition() {
        throw new RuntimeException(invalidRepetitionErrorDescription());
    }

    public void signalBoulderFound() {
        throw new RuntimeException(boulderFoundErrorDescription());
    }

    public void signalSiltFoundDuringGuardedRun() {
        throw new RuntimeException(siltFoundDuringGuardedRunErrorDescription());
    }

    public void signalNestedGuardedRun() {
        throw new RuntimeException(nestedGuardedRunErrorDescription());
    }

    public void signalUnfinishedGuardedRun() {
        throw new RuntimeException(unfinishedGuardedRunErrorDescription());
    }

    public void signalGuardedRunNotStarted() {
        throw new RuntimeException(guardedRunNotStartedErrorDescription());
    }

    // initialization

    private SurveyCrawler(Point aPosition, CrawlerFacing aFacing, Sonar aSonar, Random aRandom) {
        position = aPosition;
        facing = aFacing;
        sonar = aSonar;
        random = aRandom;
        run = new NormalRun();
        lastCommandRepetition = this::signalInvalidRepetition;
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
        run.recordUndo(() -> facing.turnClockwise(this));
    }

    public void turnClockwise() {
        sonar.groundTypeAt(position).assertCanTurn(this);
        facing.turnClockwise(this);
        run.recordUndo(() -> facing.turnCounterClockwise(this));
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

    public boolean isFinishGuardedRunCommand(char aCommand) {
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

    private void moveTowards(Point aDirection) {
        sonar.groundTypeAt(position.plus(aDirection)).moveTowards(this, aDirection);
    }

    public void moveOnFirmSandTowards(Point aDirection) {
        moveBy(aDirection);
    }

    public void slideOnSiltTowards(Point aDirection) {
        moveBy(aDirection.times(random.nextInt(SILT_SLIDING_LIMIT) + 1));
        run.siltReached(this);
    }

    private void moveBy(Point aDisplacement) {
        position = position.plus(aDisplacement);
        run.recordUndo(() -> position = position.plus(aDisplacement.negated()));
    }

    // guarded run

    public void runGuarded() {
        run = new GuardedRun();
    }

    public void runNormally() {
        run = new NormalRun();
    }

    // command processing

    public void process(String aSequenceOfCommands) {
        lastCommandRepetition = this::signalInvalidRepetition;
        try {
            for (char aCommand : aSequenceOfCommands.toCharArray()) {
                processCommand(aCommand);
            }
            run.assertFinished(this);
        } catch (RuntimeException anError) {
            run.undo();
            runNormally();
            throw anError;
        }
    }

    public void processCommand(char aCommand) {
        if (isRepetitionCommand(aCommand)) {
            repeatLastCommand(Character.digit(aCommand, 10) + 2);
            return;
        }
        if (isAdvanceCommand(aCommand)) {
            advance();
            lastCommandRepetition = this::advance;
            return;
        }
        if (isRetreatCommand(aCommand)) {
            retreat();
            lastCommandRepetition = this::retreat;
            return;
        }
        if (isTurnClockwiseCommand(aCommand)) {
            turnClockwise();
            lastCommandRepetition = this::turnClockwise;
            return;
        }
        if (isTurnCounterClockwiseCommand(aCommand)) {
            turnCounterClockwise();
            lastCommandRepetition = this::turnCounterClockwise;
            return;
        }

        lastCommandRepetition = this::signalInvalidRepetition;
        if (isStartGuardedRunCommand(aCommand)) {
            run.startGuardedRun(this);
            return;
        }
        if (isFinishGuardedRunCommand(aCommand)) {
            run.finishGuardedRun(this);
            return;
        }

        signalInvalidCommand();
    }

    private void repeatLastCommand(int aNumberOfTimes) {
        Runnable repetition = lastCommandRepetition;
        lastCommandRepetition = this::signalInvalidRepetition;
        for (int i = 0; i < aNumberOfTimes; i++) {
            repetition.run();
        }
    }
}
