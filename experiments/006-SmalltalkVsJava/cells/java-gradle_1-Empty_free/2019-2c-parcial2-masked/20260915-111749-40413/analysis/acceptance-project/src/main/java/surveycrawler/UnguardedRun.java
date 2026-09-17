package surveycrawler;

public class UnguardedRun extends CrawlerRun {

    // moving

    @Override
    public void registerMove(Point aMove) {
        // movements do not have to be undone when the run is not guarded
    }

    @Override
    public void slideOn(SurveyCrawler aCrawler, Silt aSilt, Point aNewPosition, Point aDirection) {
        aSilt.slideCrawlerTo(aCrawler, aNewPosition, aDirection);
    }

    // guarded run

    @Override
    public void startGuardedRunOn(SurveyCrawler aCrawler) {
        aCrawler.enterGuardedRun();
    }

    @Override
    public void undoOn(SurveyCrawler aCrawler) {
        // there is nothing to undo when the run is not guarded
    }
}
