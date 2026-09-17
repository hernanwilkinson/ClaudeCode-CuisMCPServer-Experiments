package surveycrawler;

public class NormalRun extends CrawlerRun {

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
    public void siltReached(SurveyCrawler aCrawler) {
    }

    // undoing

    @Override
    public void recordUndo(Runnable anUndoMovement) {
    }

    @Override
    public void undo() {
    }
}
