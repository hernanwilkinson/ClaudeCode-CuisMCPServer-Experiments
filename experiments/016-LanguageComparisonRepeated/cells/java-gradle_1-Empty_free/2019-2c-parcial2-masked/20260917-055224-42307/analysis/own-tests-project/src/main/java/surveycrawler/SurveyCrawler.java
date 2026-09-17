package surveycrawler;

import java.util.Random;

public class SurveyCrawler {

    private Point position;
    private CrawlerFacing facing;
    private final Sonar sonar;
    private final Random random;
    private CrawlerRunState runState;

    // instance creation

    public static SurveyCrawler atFacing(Point aPosition, String aFacingName) {
        return atFacingWith(aPosition, aFacingName, new FirmSandOnlySonar());
    }

    public static SurveyCrawler atFacingWith(Point aPosition, String aFacingName, Sonar aSonar) {
        return atFacingWith(aPosition, aFacingName, aSonar, new Random());
    }

    public static SurveyCrawler atFacingWith(Point aPosition, String aFacingName, Sonar aSonar, Random aRandom) {
        return new SurveyCrawler(aPosition, CrawlerFacing.facing(aFacingName), aSonar, aRandom);
    }

    public static String invalidFacingErrorDescription() {
        return "Invalid facing";
    }

    public static int slidingLimit() {
        return 10;
    }

    // exceptions

    public String invalidCommandErrorDescription() {
        return "Invalid command";
    }

    public String boulderFoundErrorDescription() {
        return "Boulder found";
    }

    public String siltFoundInGuardedRunErrorDescription() {
        return "Silt found during guarded run";
    }

    public String nestedGuardedRunErrorDescription() {
        return "Can not start a guarded run inside another guarded run";
    }

    public String unfinishedGuardedRunErrorDescription() {
        return "Guarded run was not finished";
    }

    public String guardedRunNotStartedErrorDescription() {
        return "Can not finish a guarded run that was not started";
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
        runState = new UnguardedRun();
    }

    // facing

    public void faceRight() {
        changeFacingTo(new CrawlerFacingRight());
    }

    public void faceUp() {
        changeFacingTo(new CrawlerFacingUp());
    }

    public void faceDown() {
        changeFacingTo(new CrawlerFacingDown());
    }

    public void faceLeft() {
        changeFacingTo(new CrawlerFacingLeft());
    }

    public void changeFacingTo(CrawlerFacing aFacing) {
        runState.record(new FacingChange(facing));
        facing = aFacing;
    }

    public void turnCounterClockwise() {
        groundTypeAt(position).assertCrawlerCanTurnOnIt(this);
        facing.turnCounterClockwise(this);
    }

    public void turnClockwise() {
        groundTypeAt(position).assertCrawlerCanTurnOnIt(this);
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
        groundTypeAt(position.plus(aDirection)).moveCrawlerOntoItTowards(this, aDirection);
    }

    public void changePositionBy(Point aDisplacement) {
        runState.record(new PositionChange(aDisplacement));
        position = position.plus(aDisplacement);
    }

    public void slideTowards(Point aDirection) {
        runState.slide(this, aDirection);
    }

    public void slideRandomlyTowards(Point aDirection) {
        int cellsToSlide = random.nextInt(slidingLimit()) + 1;
        for (int slidCells = 0; slidCells < cellsToSlide && !groundTypeAt(position.plus(aDirection)).stopsSliding(); slidCells++) {
            changePositionBy(aDirection);
        }
    }

    // sensing

    private GroundType groundTypeAt(Point aPosition) {
        return sonar.groundTypeAt(aPosition);
    }

    // guarded run

    public void beInGuardedRun() {
        runState = new GuardedRun();
    }

    public void beInUnguardedRun() {
        runState = new UnguardedRun();
    }

    // command processing

    public void process(String aSequenceOfCommands) {
        try {
            for (int index = 0; index < aSequenceOfCommands.length(); index++) {
                processCommandAt(aSequenceOfCommands, index);
            }
            runState.assertCommandsFinishedOn(this);
        } catch (RuntimeException anError) {
            runState.recoverFromErrorOn(this);
            throw anError;
        }
    }

    private void processCommandAt(String aSequenceOfCommands, int anIndex) {
        char aCommand = aSequenceOfCommands.charAt(anIndex);
        if (isRepetitionCommand(aCommand)) {
            repeatCommandBefore(aSequenceOfCommands, anIndex);
            return;
        }
        processCommand(aCommand);
    }

    private void repeatCommandBefore(String aSequenceOfCommands, int anIndex) {
        if (anIndex == 0 || !isRepeatableCommand(aSequenceOfCommands.charAt(anIndex - 1))) {
            signalInvalidCommand();
        }
        char commandToRepeat = aSequenceOfCommands.charAt(anIndex - 1);
        int timesToRepeat = Character.digit(aSequenceOfCommands.charAt(anIndex), 10) + 2;
        for (int times = 0; times < timesToRepeat; times++) {
            processCommand(commandToRepeat);
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
            runState.startGuardedRun(this);
            return;
        }
        if (isFinishGuardedRunCommand(aCommand)) {
            runState.finishGuardedRun(this);
            return;
        }

        signalInvalidCommand();
    }
}
