package surveycrawler;

import java.util.ArrayList;
import java.util.List;

public class GuardedRun extends CrawlerRun {

    private final List<CrawlerAction> actionsDone = new ArrayList<>();

    // guarded run

    @Override
    public void startGuardedRunOn(SurveyCrawler aCrawler) {
        aCrawler.signalCanNotStartGuardedRunInsideGuardedRun();
    }

    @Override
    public void endGuardedRunOn(SurveyCrawler aCrawler) {
        aCrawler.guardedRunEnded();
    }

    @Override
    public void finishOn(SurveyCrawler aCrawler) {
        aCrawler.signalUnfinishedGuardedRun();
    }

    // undoing

    @Override
    public void register(CrawlerAction anAction) {
        actionsDone.add(anAction);
    }

    @Override
    public void undoOn(SurveyCrawler aCrawler) {
        for (int i = actionsDone.size() - 1; i >= 0; i--) {
            actionsDone.get(i).undoOn(aCrawler);
        }
        actionsDone.clear();
    }

    // moving - sliding on silt is unpredictable, so it can not be undone

    @Override
    public void slideOn(SurveyCrawler aCrawler, Point aDirection) {
        aCrawler.signalSiltFound();
    }
}
