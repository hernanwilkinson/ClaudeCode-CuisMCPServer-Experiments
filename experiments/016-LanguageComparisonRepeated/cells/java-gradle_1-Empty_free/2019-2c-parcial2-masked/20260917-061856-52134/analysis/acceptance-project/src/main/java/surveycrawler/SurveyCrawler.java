package surveycrawler;

import java.util.Random;

public class SurveyCrawler {

    private Point position;
    private CrawlerFacing facing;
    private final Sonar sonar;
    private final Random slideRandom;
    private CrawlerRunState runState;

    // instance creation

    public static SurveyCrawler atFacing(Point aPosition, String aFacingName) {
        return atFacingWithSonar(aPosition, aFacingName, aGroundPosition -> new FirmSand());
    }

    public static SurveyCrawler atFacingWithSonar(Point aPosition, String aFacingName, Sonar aSonar) {
        return atFacingWithSonarAndRandom(aPosition, aFacingName, aSonar, new Random());
    }

    public static SurveyCrawler atFacingWithSonarAndRandom(Point aPosition, String aFacingName, Sonar aSonar, Random aSlideRandom) {
        return new SurveyCrawler(aPosition, CrawlerFacing.facing(aFacingName), aSonar, aSlideRandom);
    }

    public static String invalidFacingErrorDescription() {
        return "Invalid facing";
    }

    public static int slideLimit() {
        return 10;
    }

    // exceptions

    public String invalidCommandErrorDescription() {
        return "Invalid command";
    }

    public String boulderFoundErrorDescription() {
        return "Boulder found";
    }

    public String siltFoundDuringGuardedRunErrorDescription() {
        return "Silt found during guarded run";
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

    public void signalSiltFoundDuringGuardedRun() {
        throw new RuntimeException(siltFoundDuringGuardedRunErrorDescription());
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

    private SurveyCrawler(Point aPosition, CrawlerFacing aFacing, Sonar aSonar, Random aSlideRandom) {
        position = aPosition;
        facing = aFacing;
        sonar = aSonar;
        slideRandom = aSlideRandom;
        runState = new NormalRun();
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
        groundUnderCrawler().turnCrawler(this, () -> facing.turnCounterClockwise(this));
    }

    public void turnClockwise() {
        groundUnderCrawler().turnCrawler(this, () -> facing.turnClockwise(this));
    }

    public void turnDoing(Runnable aTurn) {
        CrawlerFacing previousFacing = facing;
        aTurn.run();
        runState.registerUndo(() -> facing = previousFacing);
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
        sonar.groundAt(position.plus(aDirection)).moveCrawlerTowards(this, aDirection);
    }

    public void slideTowards(Point aDirection) {
        displaceBy(aDirection.times(slideRandom.nextInt(slideLimit()) + 1));
        runState.siltReached(this);
    }

    public void displaceBy(Point aDisplacement) {
        position = position.plus(aDisplacement);
        runState.registerUndo(() -> position = position.plus(aDisplacement.negated()));
    }

    private Ground groundUnderCrawler() {
        return sonar.groundAt(position);
    }

    // guarded run

    public void startGuardedRun() {
        runState.startGuardedRun(this);
    }

    public void finishGuardedRun() {
        runState.finishGuardedRun(this);
    }

    public void changeRunStateTo(CrawlerRunState aRunState) {
        runState = aRunState;
    }

    // command processing

    public void process(String aSequenceOfCommands) {
        try {
            processAll(aSequenceOfCommands);
        } catch (RuntimeException anError) {
            runState.abort(this);
            throw anError;
        }
    }

    private void processAll(String aSequenceOfCommands) {
        char previousCommand = ' ';
        for (char aCommand : aSequenceOfCommands.toCharArray()) {
            if (Character.isDigit(aCommand)) {
                repeatCommand(previousCommand, Character.digit(aCommand, 10) + 2);
            } else {
                processCommand(aCommand);
            }
            previousCommand = aCommand;
        }
        runState.finishSequence(this);
    }

    private void repeatCommand(char aCommand, int aNumberOfTimes) {
        if (!isRepeatableCommand(aCommand)) {
            signalInvalidCommand();
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
            startGuardedRun();
            return;
        }
        if (isFinishGuardedRunCommand(aCommand)) {
            finishGuardedRun();
            return;
        }

        signalInvalidCommand();
    }
}
