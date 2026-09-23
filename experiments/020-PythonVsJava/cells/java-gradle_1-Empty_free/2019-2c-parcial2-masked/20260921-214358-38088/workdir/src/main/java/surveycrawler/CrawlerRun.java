package surveycrawler;

public abstract class CrawlerRun {

    // guarded run

    public abstract void startGuardedRunOn(SurveyCrawler aCrawler);

    public abstract void endGuardedRunOn(SurveyCrawler aCrawler);

    public abstract void finishOn(SurveyCrawler aCrawler);

    // undoing

    public abstract void register(CrawlerAction anAction);

    public abstract void undoOn(SurveyCrawler aCrawler);

    // moving

    public abstract void slideOn(SurveyCrawler aCrawler, Point aDirection);
}
