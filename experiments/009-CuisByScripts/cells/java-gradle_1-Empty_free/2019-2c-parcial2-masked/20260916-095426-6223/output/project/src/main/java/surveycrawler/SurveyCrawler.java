package surveycrawler;

import java.util.Random;

public class SurveyCrawler {

    private static final int SILT_SLIDING_LIMIT = 10;
    private static final int REPETITION_OFFSET = 2;

    private Point position;
    private CrawlerFacing facing;
    private final Sonar sonar;
    private final Random random;
    private CrawlerRunMode runMode;
    private Runnable lastRepeatableCommand;

    // instance creation

    public static SurveyCrawler atFacing(Point aPosition, String aFacingName) {
        return atFacingUsing(aPosition, aFacingName, aGroundPosition -> new FirmSand(), new Random());
    }

    public static SurveyCrawler atFacingUsing(Point aPosition, String aFacingName, Sonar aSonar, Random aRandom) {
        return new SurveyCrawler(aPosition, CrawlerFacing.facing(aFacingName), aSonar, aRandom);
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

    public String siltFoundInGuardedRunErrorDescription() {
        return "Silt found in guarded run";
    }

    public String guardedRunAlreadyStartedErrorDescription() {
        return "Guarded run already started";
    }

    public String guardedRunNotStartedErrorDescription() {
        return "Guarded run not started";
    }

    public String guardedRunNotFinishedErrorDescription() {
        return "Guarded run not finished";
    }

    public void signalInvalidCommand() {
        throw new RuntimeException(invalidCommandErrorDescription());
    }

    public void signalBoulderFound() {
        throw new RuntimeException(boulderFoundErrorDescription());
    }

    public void signalSiltFoundInGuardedRun() {
        throw new RuntimeException(siltFoundInGuardedRunErrorDescription());
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

    private SurveyCrawler(Point aPosition, CrawlerFacing aFacing, Sonar aSonar, Random aRandom) {
        position = aPosition;
        facing = aFacing;
        sonar = aSonar;
        random = aRandom;
        runMode = new UnguardedRun();
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
        sonar.groundAt(position).turnOn(this, () -> {
            facing.turnCounterClockwise(this);
            runMode.registerUndo(() -> facing.turnClockwise(this));
        });
    }

    public void turnClockwise() {
        sonar.groundAt(position).turnOn(this, () -> {
            facing.turnClockwise(this);
            runMode.registerUndo(() -> facing.turnCounterClockwise(this));
        });
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

    private void moveTowards(Point aStep) {
        sonar.groundAt(position.plus(aStep)).moveOnto(this, aStep);
    }

    public void moveBy(Point aDisplacement) {
        position = position.plus(aDisplacement);
        runMode.registerUndo(() -> position = position.plus(aDisplacement.times(-1)));
    }

    public void slideTowards(Point aStep) {
        runMode.slideTowards(this, aStep);
    }

    public void slideUnguardedTowards(Point aStep) {
        moveBy(aStep.times(random.nextInt(SILT_SLIDING_LIMIT) + 1));
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
            runMode.finishCommands(this);
        } catch (RuntimeException anError) {
            runMode.abort(this);
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
        if (isRepetitionCommand(aCommand)) {
            repeatLastCommand(Character.digit(aCommand, 10) + REPETITION_OFFSET);
            return;
        }
        if (isStartGuardedRunCommand(aCommand)) {
            forgetLastRepeatableCommand();
            runMode.startGuardedRun(this);
            return;
        }
        if (isEndGuardedRunCommand(aCommand)) {
            forgetLastRepeatableCommand();
            runMode.endGuardedRun(this);
            return;
        }

        signalInvalidCommand();
    }

    private void processRepeatableCommand(Runnable aCommand) {
        aCommand.run();
        lastRepeatableCommand = aCommand;
    }

    private void repeatLastCommand(int aNumberOfTimes) {
        Runnable aCommand = lastRepeatableCommand;
        forgetLastRepeatableCommand();
        for (int i = 0; i < aNumberOfTimes; i++) {
            aCommand.run();
        }
    }

    private void forgetLastRepeatableCommand() {
        lastRepeatableCommand = this::signalInvalidCommand;
    }
}
