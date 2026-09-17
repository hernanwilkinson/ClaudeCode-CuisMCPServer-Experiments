package surveycrawler;

import java.util.ArrayDeque;
import java.util.Deque;

public class GuardedRun extends RunMode {

    private final Deque<Runnable> undos = new ArrayDeque<>();

    // guarded run

    @Override
    public void startGuardedRun(SurveyCrawler aCrawler) {
        aCrawler.signalGuardedRunAlreadyStarted();
    }

    @Override
    public void endGuardedRun(SurveyCrawler aCrawler) {
        aCrawler.runUnguarded();
    }

    @Override
    public void assertFinished(SurveyCrawler aCrawler) {
        aCrawler.signalGuardedRunNotFinished();
    }

    // moving

    @Override
    public void assertCanSlide(SurveyCrawler aCrawler) {
        aCrawler.signalSiltFoundDuringGuardedRun();
    }

    // undoing

    @Override
    public void recordUndo(Runnable anUndo) {
        undos.push(anUndo);
    }

    @Override
    public void undoMovements() {
        while (!undos.isEmpty()) {
            undos.pop().run();
        }
    }
}
