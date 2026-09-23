package surveycrawler;

public class EndGuardedRunCommand extends CrawlerCommand {

    // testing

    @Override
    public boolean isFor(char aCommand) {
        return aCommand == ')';
    }

    // executing

    @Override
    protected void executeOnce(SurveyCrawler aCrawler) {
        aCrawler.endGuardedRun();
    }
}
