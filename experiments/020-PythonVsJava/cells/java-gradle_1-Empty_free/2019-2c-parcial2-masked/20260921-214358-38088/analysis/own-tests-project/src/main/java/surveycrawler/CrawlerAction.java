package surveycrawler;

public abstract class CrawlerAction {

    // applying

    public abstract void applyTo(SurveyCrawler aCrawler);

    // undoing

    public abstract CrawlerAction opposite();

    public void undoOn(SurveyCrawler aCrawler) {
        opposite().applyTo(aCrawler);
    }
}
