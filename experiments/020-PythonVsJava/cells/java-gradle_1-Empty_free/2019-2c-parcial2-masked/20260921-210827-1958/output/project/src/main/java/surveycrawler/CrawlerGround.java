package surveycrawler;

public abstract class CrawlerGround {

    // moving

    public abstract void moveCrawler(SurveyCrawler aCrawler, Point aDirection);

    // facing

    public abstract void turnCrawler(SurveyCrawler aCrawler, CrawlerMovement aTurn);
}
