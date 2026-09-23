package surveycrawler;

public class StartGuardedRunCommand extends CrawlerCommand {

    // testing

    @Override
    public boolean isFor(char aCommand) {
        return aCommand == '(';
    }

    // executing

    @Override
    protected void executeOnce(SurveyCrawler aCrawler) {
        aCrawler.startGuardedRun();
    }
}
