package surveycrawler;

import java.util.Random;

public class SurveyCrawler {

    private Point position;
    private CrawlerFacing facing;
    private final CrawlerSonar sonar;
    private final Random random;
    private CrawlerRun currentRun;

    // instance creation

    public static SurveyCrawler atFacing(Point aPosition, String aFacingName) {
        return atFacingSonar(aPosition, aFacingName, new FirmSandSonar());
    }

    public static SurveyCrawler atFacingSonar(Point aPosition, String aFacingName, CrawlerSonar aSonar) {
        return atFacingSonarSlidingWith(aPosition, aFacingName, aSonar, new Random());
    }

    public static SurveyCrawler atFacingSonarSlidingWith(
            Point aPosition, String aFacingName, CrawlerSonar aSonar, Random aRandom) {
        return new SurveyCrawler(aPosition, CrawlerFacing.facing(aFacingName), aSonar, aRandom);
    }

    public static String invalidFacingErrorDescription() {
        return "Invalid facing";
    }

    public static int siltSlideLimit() {
        return 10;
    }

    public static int repetitionsAddedToDigit() {
        return 2;
    }

    // initialization

    private SurveyCrawler(Point aPosition, CrawlerFacing aFacing, CrawlerSonar aSonar, Random aRandom) {
        position = aPosition;
        facing = aFacing;
        sonar = aSonar;
        random = aRandom;
        currentRun = new CrawlerNormalRun();
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

    public String canNotMoveOnSiltDuringGuardedRunErrorDescription() {
        return "Can not move on silt during a guarded run";
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

    public void signalCanNotMoveOnSiltDuringGuardedRun() {
        throw new RuntimeException(canNotMoveOnSiltDuringGuardedRunErrorDescription());
    }

    public void signalCanNotStartGuardedRunDuringGuardedRun() {
        throw new RuntimeException(canNotStartGuardedRunDuringGuardedRunErrorDescription());
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
        groundAt(position).turnCrawler(this, new CrawlerCounterClockwiseTurn());
    }

    public void turnClockwise() {
        groundAt(position).turnCrawler(this, new CrawlerClockwiseTurn());
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

    public boolean isEndGuardedRunCommand(char aCommand) {
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

    // sonar

    public CrawlerGround groundAt(Point aPosition) {
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
        groundAt(position.plus(aDirection)).moveCrawler(this, aDirection);
    }

    public void slideOnSilt(Point aDirection) {
        currentRun.slideOnSilt(this, aDirection);
    }

    public void slideRandomlyOnSilt(Point aDirection) {
        perform(new CrawlerDisplacement(aDirection.times(random.nextInt(siltSlideLimit()) + 1)));
    }

    // movements

    public void perform(CrawlerMovement aMovement) {
        aMovement.applyTo(this);
        currentRun.registerMovement(aMovement);
    }

    public void applyDisplacement(Point aDisplacement) {
        position = position.plus(aDisplacement);
    }

    public void applyTurnClockwise() {
        facing.turnClockwise(this);
    }

    public void applyTurnCounterClockwise() {
        facing.turnCounterClockwise(this);
    }

    // command processing

    public void process(String aSequenceOfCommands) {
        try {
            processSequence(aSequenceOfCommands);
            currentRun.finish(this);
        } catch (RuntimeException anError) {
            currentRun.undoOn(this);
            currentRun = new CrawlerNormalRun();
            throw anError;
        }
    }

    private void processSequence(String aSequenceOfCommands) {
        char lastRepeatableCommand = noRepeatableCommand();

        for (char aCommand : aSequenceOfCommands.toCharArray()) {
            if (isRepetitionCommand(aCommand)) {
                repeatCommand(lastRepeatableCommand, aCommand);
                lastRepeatableCommand = noRepeatableCommand();
            } else {
                processCommand(aCommand);
                lastRepeatableCommand = isRepeatableCommand(aCommand) ? aCommand : noRepeatableCommand();
            }
        }
    }

    private char noRepeatableCommand() {
        return ' ';
    }

    private void repeatCommand(char aCommandToRepeat, char aRepetitionDigit) {
        if (!isRepeatableCommand(aCommandToRepeat)) {
            signalInvalidCommand();
        }

        int numberOfRepetitions = Character.digit(aRepetitionDigit, 10) + repetitionsAddedToDigit();
        for (int repetition = 1; repetition <= numberOfRepetitions; repetition++) {
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
        if (isStartGuardedRunCommand(aCommand)) {
            currentRun = currentRun.startGuardedRun(this);
            return;
        }
        if (isEndGuardedRunCommand(aCommand)) {
            currentRun = currentRun.endGuardedRun(this);
            return;
        }

        signalInvalidCommand();
    }
}
