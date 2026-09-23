package surveycrawler;

public class AdvanceCommand extends RepeatableCrawlerCommand {

    // testing

    @Override
    public boolean isFor(char aCommand) {
        return aCommand == 'a';
    }

    // executing

    @Override
    protected void executeOnce(SurveyCrawler aCrawler) {
        aCrawler.advance();
    }
}
