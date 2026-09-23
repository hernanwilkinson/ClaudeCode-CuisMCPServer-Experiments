package surveycrawler;

public class InvalidCommand extends CrawlerCommand {

    // testing - it is the command used when no other command understands the character,
    // and also the last command when there is no command to repeat

    @Override
    public boolean isFor(char aCommand) {
        return true;
    }

    // executing

    @Override
    protected void executeOnce(SurveyCrawler aCrawler) {
        aCrawler.signalInvalidCommand();
    }
}
