package surveycrawler;

public abstract class RunMode {

    // guarded run

    public abstract void startGuardedRun(SurveyCrawler aCrawler);

    public abstract void endGuardedRun(SurveyCrawler aCrawler);

    public abstract void assertFinished(SurveyCrawler aCrawler);

    // moving

    public abstract void assertCanSlide(SurveyCrawler aCrawler);

    // undoing

    public abstract void recordUndo(Runnable anUndo);

    public abstract void undoMovements();
}
