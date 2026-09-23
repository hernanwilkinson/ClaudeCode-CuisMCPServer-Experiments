package surveycrawler;

public class NormalRun extends CrawlerRun {

    // guarded run

    @Override
    public void startGuardedRun(SurveyCrawler aCrawler) {
        aCrawler.beginGuardedRun();
    }

    @Override
    public void endGuardedRun(SurveyCrawler aCrawler) {
        aCrawler.signalNotStartedGuardedRun();
    }

    @Override
    public void assertIsFinished(SurveyCrawler aCrawler) {
        // a normal run is always finished
    }

    // moving

    @Override
    public void slideOnSilt(SurveyCrawler aCrawler, Point aDirection, SiltSlide aSlide) {
        aCrawler.moveBy(aDirection.times(aSlide.cellsToSlide()));
    }

    // undoing

    @Override
    public void registerUndoAction(Runnable anUndoAction) {
        // movements of a normal run are not undone
    }

    @Override
    public void handleErrorOf(SurveyCrawler aCrawler) {
        // movements of a normal run are not undone
    }
}
