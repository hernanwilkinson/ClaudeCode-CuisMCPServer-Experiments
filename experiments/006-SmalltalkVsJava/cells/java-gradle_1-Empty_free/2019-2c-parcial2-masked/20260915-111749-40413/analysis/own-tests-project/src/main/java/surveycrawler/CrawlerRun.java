package surveycrawler;

public abstract class CrawlerRun {

    // moving

    public abstract void registerMove(Point aMove);

    public abstract void slideOn(SurveyCrawler aCrawler, Silt aSilt, Point aNewPosition, Point aDirection);

    // guarded run

    public abstract void startGuardedRunOn(SurveyCrawler aCrawler);

    public abstract void undoOn(SurveyCrawler aCrawler);
}
