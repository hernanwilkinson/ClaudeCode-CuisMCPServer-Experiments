package surveycrawler;

public abstract class CrawlerRunState {

    // guarded run

    public abstract void startGuardedRun(SurveyCrawler aCrawler);

    public abstract void finishGuardedRun(SurveyCrawler aCrawler);

    public abstract void assertCommandsFinishedOn(SurveyCrawler aCrawler);

    public abstract void recoverFromErrorOn(SurveyCrawler aCrawler);

    // moving

    public abstract void record(CrawlerMovement aMovement);

    public abstract void slide(SurveyCrawler aCrawler, Point aDirection);
}
