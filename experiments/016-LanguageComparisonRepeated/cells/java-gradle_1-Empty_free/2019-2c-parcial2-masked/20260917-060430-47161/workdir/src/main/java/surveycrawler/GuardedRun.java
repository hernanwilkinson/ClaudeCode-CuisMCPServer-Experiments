package surveycrawler;

import java.util.ArrayList;
import java.util.List;

public class GuardedRun extends CrawlerRun {

    private final List<Runnable> undoMovements = new ArrayList<>();

    // guarded run

    @Override
    public void startGuardedRun(SurveyCrawler aCrawler) {
        aCrawler.signalNestedGuardedRun();
    }

    @Override
    public void finishGuardedRun(SurveyCrawler aCrawler) {
        aCrawler.runNormally();
    }

    @Override
    public void assertFinished(SurveyCrawler aCrawler) {
        aCrawler.signalUnfinishedGuardedRun();
    }

    // moving

    @Override
    public void siltReached(SurveyCrawler aCrawler) {
        aCrawler.signalSiltFoundDuringGuardedRun();
    }

    // undoing

    @Override
    public void recordUndo(Runnable anUndoMovement) {
        undoMovements.add(anUndoMovement);
    }

    @Override
    public void undo() {
        for (int i = undoMovements.size() - 1; i >= 0; i--) {
            undoMovements.get(i).run();
        }
        undoMovements.clear();
    }
}
