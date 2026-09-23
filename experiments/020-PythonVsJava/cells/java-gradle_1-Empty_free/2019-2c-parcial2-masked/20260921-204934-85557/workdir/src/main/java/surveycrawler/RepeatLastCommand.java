package surveycrawler;

public class RepeatLastCommand extends CrawlerCommand {

    /* The digit tells how many times, plus two, the last command has to be repeated */
    private static final int ADDED_REPETITIONS = 2;

    private final char digit;

    // instance creation

    public RepeatLastCommand(char aDigit) {
        digit = aDigit;
    }

    @Override
    protected CrawlerCommand forCharacter(char aCharacter) {
        return new RepeatLastCommand(aCharacter);
    }

    // testing

    @Override
    public boolean isFor(char aCharacter) {
        return Character.isDigit(aCharacter);
    }

    // executing

    @Override
    public void executeOn(SurveyCrawler aCrawler) {
        aCrawler.repeatLastCommandTimes(numberOfRepetitions());
    }

    private int numberOfRepetitions() {
        return Character.digit(digit, 10) + ADDED_REPETITIONS;
    }
}
