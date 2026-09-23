package surveycrawler;

import java.util.ArrayList;
import java.util.List;

public class CrawlerGuardedRun extends CrawlerRun {

    private final List<CrawlerMovement> movements = new ArrayList<>();

    // movement registration

    @Override
    public void registerMovement(CrawlerMovement aMovement) {
        movements.add(aMovement);
    }

    // moving

    @Override
    public void slideOnSilt(SurveyCrawler aCrawler, Point aDirection) {
        aCrawler.signalCanNotMoveOnSiltDuringGuardedRun();
    }

    // guarded run

    @Override
    public CrawlerRun startGuardedRun(SurveyCrawler aCrawler) {
        aCrawler.signalCanNotStartGuardedRunDuringGuardedRun();
        return this;
    }

    @Override
    public CrawlerRun endGuardedRun(SurveyCrawler aCrawler) {
        return new CrawlerNormalRun();
    }

    // command processing

    @Override
    public void finish(SurveyCrawler aCrawler) {
        aCrawler.signalUnfinishedGuardedRun();
    }

    @Override
    public void undoOn(SurveyCrawler aCrawler) {
        for (int index = movements.size() - 1; index >= 0; index--) {
            movements.get(index).undoOn(aCrawler);
        }
        movements.clear();
    }
}
