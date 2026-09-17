package surveycrawler;

public abstract class CrawlerRunMode {

    // guarded run

    public abstract void startGuardedRun(SurveyCrawler aCrawler);

    public abstract void endGuardedRun(SurveyCrawler aCrawler);

    public abstract void finishCommands(SurveyCrawler aCrawler);

    public abstract void abort(SurveyCrawler aCrawler);

    // moving

    public abstract void registerUndo(Runnable anUndo);

    public abstract void slideTowards(SurveyCrawler aCrawler, Point aStep);
}
