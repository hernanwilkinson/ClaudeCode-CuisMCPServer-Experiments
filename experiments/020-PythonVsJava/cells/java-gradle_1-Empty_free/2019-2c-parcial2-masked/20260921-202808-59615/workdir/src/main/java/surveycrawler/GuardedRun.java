package surveycrawler;

import java.util.ArrayList;
import java.util.List;

public class GuardedRun extends CrawlerRun {

    private final List<Runnable> undoActions = new ArrayList<>();

    // guarded run

    @Override
    public void startGuardedRun(SurveyCrawler aCrawler) {
        aCrawler.signalCanNotStartGuardedRunInsideGuardedRun();
    }

    @Override
    public void endGuardedRun(SurveyCrawler aCrawler) {
        aCrawler.finishGuardedRun();
    }

    @Override
    public void assertIsFinished(SurveyCrawler aCrawler) {
        aCrawler.signalUnfinishedGuardedRun();
    }

    // moving

    @Override
    public void slideOnSilt(SurveyCrawler aCrawler, Point aDirection, SiltSlide aSlide) {
        aCrawler.signalCanNotMoveOnSiltDuringGuardedRun();
    }

    // undoing

    @Override
    public void registerUndoAction(Runnable anUndoAction) {
        undoActions.add(anUndoAction);
    }

    @Override
    public void handleErrorOf(SurveyCrawler aCrawler) {
        undoMovements();
        aCrawler.finishGuardedRun();
    }

    private void undoMovements() {
        for (int i = undoActions.size() - 1; i >= 0; i--) {
            undoActions.get(i).run();
        }
        undoActions.clear();
    }
}
