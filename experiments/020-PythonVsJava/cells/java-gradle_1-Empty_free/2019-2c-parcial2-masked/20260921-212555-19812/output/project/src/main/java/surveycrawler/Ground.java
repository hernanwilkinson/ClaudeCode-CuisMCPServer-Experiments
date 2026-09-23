package surveycrawler;

public abstract class Ground {

    // moving

    public abstract void moveCrawlerTowards(SurveyCrawler aCrawler, Point aDirection);

    // facing

    public abstract void turnCrawlerClockwise(SurveyCrawler aCrawler);

    public abstract void turnCrawlerCounterClockwise(SurveyCrawler aCrawler);
}
