package surveycrawler;

public class UnguardedRun extends CrawlerRun {

    // guarded run

    @Override
    public void startGuardedRunOn(SurveyCrawler aCrawler) {
        aCrawler.guardedRunStarted();
    }

    @Override
    public void endGuardedRunOn(SurveyCrawler aCrawler) {
        aCrawler.signalInvalidCommand();
    }

    @Override
    public void finishOn(SurveyCrawler aCrawler) {
        // nothing to finish, the crawler is not in a guarded run
    }

    // undoing - nothing is registered nor undone outside a guarded run

    @Override
    public void register(CrawlerAction anAction) {
    }

    @Override
    public void undoOn(SurveyCrawler aCrawler) {
    }

    // moving

    @Override
    public void slideOn(SurveyCrawler aCrawler, Point aDirection) {
        aCrawler.slide(aDirection);
    }
}
