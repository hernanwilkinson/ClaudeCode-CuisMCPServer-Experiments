package surveycrawler;

public class NormalRun extends CrawlerRun {

    // movements - nothing has to be undone when not in a guarded run

    @Override
    public void registerMovement(CrawlerMovement aMovement) {
    }

    @Override
    public void moveUnpredictably(SurveyCrawler aCrawler, Point aDirection, int aNumberOfCells) {
        aCrawler.changePositionTowards(aDirection.times(aNumberOfCells));
    }

    @Override
    public void undoMovementsOn(SurveyCrawler aCrawler) {
    }

    // guarded runs

    @Override
    public void startGuardedRun(SurveyCrawler aCrawler) {
        aCrawler.beginGuardedRun();
    }

    @Override
    public void endGuardedRun(SurveyCrawler aCrawler) {
        aCrawler.signalGuardedRunNotStarted();
    }

    @Override
    public void assertIsFinished(SurveyCrawler aCrawler) {
    }
}
