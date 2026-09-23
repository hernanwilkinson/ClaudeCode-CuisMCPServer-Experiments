package surveycrawler;

public abstract class CrawlerRun {

    // movements

    public abstract void registerMovement(CrawlerMovement aMovement);

    public abstract void moveUnpredictably(SurveyCrawler aCrawler, Point aDirection, int aNumberOfCells);

    public abstract void undoMovementsOn(SurveyCrawler aCrawler);

    // guarded runs

    public abstract void startGuardedRun(SurveyCrawler aCrawler);

    public abstract void endGuardedRun(SurveyCrawler aCrawler);

    public abstract void assertIsFinished(SurveyCrawler aCrawler);
}
