package surveycrawler;

import java.util.ArrayList;
import java.util.List;

public class GuardedRun extends CrawlerRun {

    private final List<CrawlerMovement> movements = new ArrayList<>();

    // movements

    @Override
    public void registerMovement(CrawlerMovement aMovement) {
        movements.add(aMovement);
    }

    @Override
    public void moveUnpredictably(SurveyCrawler aCrawler, Point aDirection, int aNumberOfCells) {
        aCrawler.signalUnpredictableMovement();
    }

    @Override
    public void undoMovementsOn(SurveyCrawler aCrawler) {
        for (int i = movements.size() - 1; i >= 0; i--) {
            movements.get(i).undoOn(aCrawler);
        }
        movements.clear();
    }

    // guarded runs

    @Override
    public void startGuardedRun(SurveyCrawler aCrawler) {
        aCrawler.signalGuardedRunAlreadyStarted();
    }

    @Override
    public void endGuardedRun(SurveyCrawler aCrawler) {
        aCrawler.finishGuardedRun();
    }

    @Override
    public void assertIsFinished(SurveyCrawler aCrawler) {
        aCrawler.signalGuardedRunNotFinished();
    }
}
