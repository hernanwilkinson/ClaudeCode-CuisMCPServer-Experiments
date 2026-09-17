package surveycrawler;

public abstract class GroundType {

    // moving

    public abstract void moveCrawlerOntoItTowards(SurveyCrawler aCrawler, Point aDirection);

    public abstract boolean stopsSliding();

    // facing

    public abstract void assertCrawlerCanTurnOnIt(SurveyCrawler aCrawler);
}
