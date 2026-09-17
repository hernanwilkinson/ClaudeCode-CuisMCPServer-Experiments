package surveycrawler;

public abstract class Ground {

    // moving

    public abstract void moveCrawlerTowards(SurveyCrawler aCrawler, Point aDirection);

    // facing

    public abstract void turnCrawler(SurveyCrawler aCrawler, Runnable aTurn);
}
