package surveycrawler;

public abstract class Ground {

    // instance creation

    public static Ground firmSand() {
        return new FirmSand();
    }

    public static Ground silt() {
        return new Silt();
    }

    public static Ground boulder() {
        return new Boulder();
    }

    // crawler moving

    public abstract void moveCrawler(SurveyCrawler aCrawler, Point aDirection);

    // crawler turning

    public abstract void turnCrawler(SurveyCrawler aCrawler, CrawlerTurn aTurn);
}
