package surveycrawler;

public abstract class CrawlerMovement {

    // moving

    public abstract void applyTo(SurveyCrawler aCrawler);

    public abstract void undoOn(SurveyCrawler aCrawler);
}
