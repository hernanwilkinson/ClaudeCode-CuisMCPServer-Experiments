package surveycrawler;

public class UnguardedRun extends RunMode {

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
    public void assertFinished(SurveyCrawler aCrawler) {
    }

    // moving

    @Override
    public void assertCanSlide(SurveyCrawler aCrawler) {
    }

    // undoing

    @Override
    public void recordUndo(Runnable anUndo) {
    }

    @Override
    public void undoMovements() {
    }
}
