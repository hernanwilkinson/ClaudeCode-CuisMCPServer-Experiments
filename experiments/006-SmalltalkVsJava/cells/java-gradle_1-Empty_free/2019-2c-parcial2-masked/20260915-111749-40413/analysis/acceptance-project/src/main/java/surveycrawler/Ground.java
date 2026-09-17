package surveycrawler;

public abstract class Ground {

    // moving

    public abstract void moveCrawlerTo(SurveyCrawler aCrawler, Point aNewPosition, Point aDirection);

    // facing

    public abstract void turnCrawlerClockwise(SurveyCrawler aCrawler);

    public abstract void turnCrawlerCounterClockwise(SurveyCrawler aCrawler);
}
