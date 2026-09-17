package surveycrawler;

public class UnguardedRun extends CrawlerRunState {

    // guarded run

    @Override
    public void startGuardedRun(SurveyCrawler aCrawler) {
        aCrawler.beInGuardedRun();
    }

    @Override
    public void finishGuardedRun(SurveyCrawler aCrawler) {
        aCrawler.signalGuardedRunNotStarted();
    }

    @Override
    public void assertCommandsFinishedOn(SurveyCrawler aCrawler) {
    }

    @Override
    public void recoverFromErrorOn(SurveyCrawler aCrawler) {
    }

    // moving

    @Override
    public void record(CrawlerMovement aMovement) {
    }

    @Override
    public void slide(SurveyCrawler aCrawler, Point aDirection) {
        aCrawler.slideRandomlyTowards(aDirection);
    }
}
