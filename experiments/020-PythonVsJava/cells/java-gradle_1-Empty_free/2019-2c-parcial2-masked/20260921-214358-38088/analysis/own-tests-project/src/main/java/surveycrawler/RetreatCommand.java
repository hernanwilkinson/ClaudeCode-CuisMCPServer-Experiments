package surveycrawler;

public class RetreatCommand extends RepeatableCrawlerCommand {

    // testing

    @Override
    public boolean isFor(char aCommand) {
        return aCommand == 't';
    }

    // executing

    @Override
    protected void executeOnce(SurveyCrawler aCrawler) {
        aCrawler.retreat();
    }
}
