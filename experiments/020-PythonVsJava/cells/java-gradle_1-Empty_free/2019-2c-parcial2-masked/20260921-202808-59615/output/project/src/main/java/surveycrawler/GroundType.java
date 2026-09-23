package surveycrawler;

public abstract class GroundType {

    // moving

    public abstract void moveCrawlerInDirection(SurveyCrawler aCrawler, Point aDirection);

    // facing

    public abstract void turnCrawler(SurveyCrawler aCrawler, Runnable aTurn);
}
