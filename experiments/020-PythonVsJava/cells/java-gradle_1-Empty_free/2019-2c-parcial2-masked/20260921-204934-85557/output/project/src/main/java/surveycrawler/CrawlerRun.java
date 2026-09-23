package surveycrawler;

public abstract class CrawlerRun {

    // moving

    public abstract Point positionAfterMovingOn(SeabedGround aGround, Point aPosition, Point aDirection);

    public abstract void register(CrawlerMovement aMovement);

    // guarded run

    public abstract CrawlerRun startGuardedRun();

    public abstract CrawlerRun endGuardedRunOn(SurveyCrawler aCrawler);

    public abstract void assertIsFinished();

    // undoing

    public abstract void undoOn(SurveyCrawler aCrawler);
}
