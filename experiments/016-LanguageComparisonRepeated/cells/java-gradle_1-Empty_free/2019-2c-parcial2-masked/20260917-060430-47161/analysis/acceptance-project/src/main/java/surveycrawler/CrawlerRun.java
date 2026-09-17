package surveycrawler;

public abstract class CrawlerRun {

    // guarded run

    public abstract void startGuardedRun(SurveyCrawler aCrawler);

    public abstract void finishGuardedRun(SurveyCrawler aCrawler);

    public abstract void assertFinished(SurveyCrawler aCrawler);

    // moving

    public abstract void siltReached(SurveyCrawler aCrawler);

    // undoing

    public abstract void recordUndo(Runnable anUndoMovement);

    public abstract void undo();
}
