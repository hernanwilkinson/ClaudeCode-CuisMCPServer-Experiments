package surveycrawler;

public class NormalRun extends CrawlerRunState {

    // guarded run

    @Override
    public void startGuardedRun(SurveyCrawler aCrawler) {
        aCrawler.changeRunStateTo(new GuardedRun());
    }

    @Override
    public void finishGuardedRun(SurveyCrawler aCrawler) {
        aCrawler.signalGuardedRunNotStarted();
    }

    // command processing

    @Override
    public void finishSequence(SurveyCrawler aCrawler) {
    }

    @Override
    public void abort(SurveyCrawler aCrawler) {
    }

    // moving

    @Override
    public void registerUndo(Runnable anUndo) {
    }

    @Override
    public void siltReached(SurveyCrawler aCrawler) {
    }
}
