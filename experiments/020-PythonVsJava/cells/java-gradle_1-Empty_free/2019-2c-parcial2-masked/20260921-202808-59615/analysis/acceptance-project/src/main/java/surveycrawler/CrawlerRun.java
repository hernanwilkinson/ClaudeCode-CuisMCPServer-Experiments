package surveycrawler;

public abstract class CrawlerRun {

    // guarded run

    public abstract void startGuardedRun(SurveyCrawler aCrawler);

    public abstract void endGuardedRun(SurveyCrawler aCrawler);

    public abstract void assertIsFinished(SurveyCrawler aCrawler);

    // moving

    public abstract void slideOnSilt(SurveyCrawler aCrawler, Point aDirection, SiltSlide aSlide);

    // undoing

    public abstract void registerUndoAction(Runnable anUndoAction);

    public abstract void handleErrorOf(SurveyCrawler aCrawler);
}
