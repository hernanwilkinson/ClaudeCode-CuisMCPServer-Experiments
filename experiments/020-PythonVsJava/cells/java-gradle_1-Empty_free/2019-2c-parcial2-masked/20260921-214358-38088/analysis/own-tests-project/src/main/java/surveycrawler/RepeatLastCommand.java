package surveycrawler;

public class RepeatLastCommand extends CrawlerCommand {

    private final int digit;

    // instance creation

    public RepeatLastCommand() {
        this(0);
    }

    public RepeatLastCommand(int aDigit) {
        digit = aDigit;
    }

    public static int repetitionsAddedToDigit() {
        return 2;
    }

    // testing

    @Override
    public boolean isFor(char aCommand) {
        return Character.isDigit(aCommand);
    }

    @Override
    protected CrawlerCommand forCommand(char aCommand) {
        return new RepeatLastCommand(Character.digit(aCommand, 10));
    }

    // executing

    @Override
    protected void executeOnce(SurveyCrawler aCrawler) {
        aCrawler.repeatLastCommand(digit + repetitionsAddedToDigit());
    }
}
