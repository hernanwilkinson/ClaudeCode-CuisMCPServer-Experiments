package surveycrawler;

public abstract class CrawlerRunMode {

    // guarded run

    public abstract void startGuardedRun(SurveyCrawler aCrawler);

    public abstract void finishGuardedRun(SurveyCrawler aCrawler);

    public abstract void assertFinished(SurveyCrawler aCrawler);

    // moving

    public abstract void slideTowards(SurveyCrawler aCrawler, Point aDirection);

    // undoing

    public abstract void recordUndo(Runnable anUndoAction);

    public abstract void recoverFromError(SurveyCrawler aCrawler);
}
