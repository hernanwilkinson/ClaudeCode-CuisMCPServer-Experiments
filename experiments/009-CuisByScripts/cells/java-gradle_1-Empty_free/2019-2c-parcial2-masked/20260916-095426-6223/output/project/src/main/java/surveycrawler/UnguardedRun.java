package surveycrawler;

public class UnguardedRun extends CrawlerRunMode {

    // guarded run

    @Override
    public void startGuardedRun(SurveyCrawler aCrawler) {
        aCrawler.runGuarded();
    }

    @Override
    public void endGuardedRun(SurveyCrawler aCrawler) {
        aCrawler.signalGuardedRunNotStarted();
    }

    @Override
    public void finishCommands(SurveyCrawler aCrawler) {
    }

    @Override
    public void abort(SurveyCrawler aCrawler) {
    }

    // moving

    @Override
    public void registerUndo(Runnable anUndo) {
    }

    @Override
    public void slideTowards(SurveyCrawler aCrawler, Point aStep) {
        aCrawler.slideUnguardedTowards(aStep);
    }
}
