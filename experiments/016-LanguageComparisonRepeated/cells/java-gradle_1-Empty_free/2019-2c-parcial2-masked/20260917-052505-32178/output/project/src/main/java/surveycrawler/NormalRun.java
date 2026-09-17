package surveycrawler;

public class NormalRun extends CrawlerRunMode {

    // guarded run

    @Override
    public void startGuardedRun(SurveyCrawler aCrawler) {
        aCrawler.runGuarded();
    }

    @Override
    public void finishGuardedRun(SurveyCrawler aCrawler) {
        aCrawler.signalGuardedRunNotStarted();
    }

    @Override
    public void assertFinished(SurveyCrawler aCrawler) {
    }

    // moving

    @Override
    public void slideTowards(SurveyCrawler aCrawler, Point aDirection) {
        aCrawler.stepTowards(aDirection.times(aCrawler.slidingDistance()));
    }

    // undoing

    @Override
    public void recordUndo(Runnable anUndoAction) {
    }

    @Override
    public void recoverFromError(SurveyCrawler aCrawler) {
    }
}
