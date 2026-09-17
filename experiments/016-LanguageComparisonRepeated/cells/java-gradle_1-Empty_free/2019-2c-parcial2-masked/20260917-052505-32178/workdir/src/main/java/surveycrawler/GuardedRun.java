package surveycrawler;

import java.util.ArrayList;
import java.util.List;

public class GuardedRun extends CrawlerRunMode {

    private final List<Runnable> undoActions = new ArrayList<>();

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
    public void slideTowards(SurveyCrawler aCrawler, Point aDirection) {
        aCrawler.signalSiltFoundDuringGuardedRun();
    }

    // undoing

    @Override
    public void recordUndo(Runnable anUndoAction) {
        undoActions.add(anUndoAction);
    }

    @Override
    public void recoverFromError(SurveyCrawler aCrawler) {
        for (int i = undoActions.size() - 1; i >= 0; i--) {
            undoActions.get(i).run();
        }
        aCrawler.runNormally();
    }
}
