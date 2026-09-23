package surveycrawler;

public abstract class CrawlerRun {

    // movement registration

    public abstract void registerMovement(CrawlerMovement aMovement);

    // moving

    public abstract void slideOnSilt(SurveyCrawler aCrawler, Point aDirection);

    // guarded run

    public abstract CrawlerRun startGuardedRun(SurveyCrawler aCrawler);

    public abstract CrawlerRun endGuardedRun(SurveyCrawler aCrawler);

    // command processing

    public abstract void finish(SurveyCrawler aCrawler);

    public abstract void undoOn(SurveyCrawler aCrawler);
}
