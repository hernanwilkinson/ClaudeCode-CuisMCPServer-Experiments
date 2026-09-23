package surveycrawler;

public class StartGuardedRunCommand extends CrawlerCommand {

    // testing

    @Override
    public boolean isFor(char aCharacter) {
        return aCharacter == '(';
    }

    // executing

    @Override
    public void executeOn(SurveyCrawler aCrawler) {
        aCrawler.startGuardedRun();
    }
}
