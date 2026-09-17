package surveycrawler;

import java.util.ArrayList;
import java.util.List;

public class GuardedRun extends CrawlerRunState {

    private final List<CrawlerMovement> movements = new ArrayList<>();

    // guarded run

    @Override
    public void startGuardedRun(SurveyCrawler aCrawler) {
        aCrawler.signalNestedGuardedRun();
    }

    @Override
    public void finishGuardedRun(SurveyCrawler aCrawler) {
        aCrawler.beInUnguardedRun();
    }

    @Override
    public void assertCommandsFinishedOn(SurveyCrawler aCrawler) {
        aCrawler.signalUnfinishedGuardedRun();
    }

    @Override
    public void recoverFromErrorOn(SurveyCrawler aCrawler) {
        aCrawler.beInUnguardedRun();
        for (int index = movements.size() - 1; index >= 0; index--) {
            movements.get(index).undoOn(aCrawler);
        }
    }

    // moving

    @Override
    public void record(CrawlerMovement aMovement) {
        movements.add(aMovement);
    }

    @Override
    public void slide(SurveyCrawler aCrawler, Point aDirection) {
        aCrawler.signalSiltFoundInGuardedRun();
    }
}
