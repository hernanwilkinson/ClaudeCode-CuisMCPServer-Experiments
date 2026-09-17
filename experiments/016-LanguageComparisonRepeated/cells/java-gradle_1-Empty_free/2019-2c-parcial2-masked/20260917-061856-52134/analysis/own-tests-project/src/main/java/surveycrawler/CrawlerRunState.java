package surveycrawler;

public abstract class CrawlerRunState {

    // guarded run

    public abstract void startGuardedRun(SurveyCrawler aCrawler);

    public abstract void finishGuardedRun(SurveyCrawler aCrawler);

    // command processing

    public abstract void finishSequence(SurveyCrawler aCrawler);

    public abstract void abort(SurveyCrawler aCrawler);

    // moving

    public abstract void registerUndo(Runnable anUndo);

    public abstract void siltReached(SurveyCrawler aCrawler);
}
