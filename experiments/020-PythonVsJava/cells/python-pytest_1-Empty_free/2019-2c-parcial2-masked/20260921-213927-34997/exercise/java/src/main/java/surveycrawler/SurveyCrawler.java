package surveycrawler;

public class SurveyCrawler {

    private Point position;
    private CrawlerFacing facing;

    // instance creation

    public static SurveyCrawler atFacing(Point aPosition, String aFacingName) {
        return new SurveyCrawler(aPosition, CrawlerFacing.facing(aFacingName));
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

    private SurveyCrawler(Point aPosition, CrawlerFacing aFacing) {
        position = aPosition;
        facing = aFacing;
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
        facing.turnCounterClockwise(this);
    }

    public void turnClockwise() {
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

    // moving

    public void retreat() {
        facing.retreat(this);
    }

    public void moveRight() {
        position = position.plus(new Point(1, 0));
    }

    public void advance() {
        facing.advance(this);
    }

    public void moveUp() {
        position = position.plus(new Point(0, 1));
    }

    public void moveDown() {
        position = position.plus(new Point(0, -1));
    }

    public void moveLeft() {
        position = position.plus(new Point(-1, 0));
    }

    // command processing

    public void process(String aSequenceOfCommands) {
        for (char aCommand : aSequenceOfCommands.toCharArray()) {
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

        signalInvalidCommand();
    }
}
