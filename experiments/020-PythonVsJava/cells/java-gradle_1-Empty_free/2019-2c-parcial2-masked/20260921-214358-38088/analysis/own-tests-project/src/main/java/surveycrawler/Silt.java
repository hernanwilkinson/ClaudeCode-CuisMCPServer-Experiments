package surveycrawler;

public class Silt extends Ground {

    // crawler moving

    @Override
    public void moveCrawler(SurveyCrawler aCrawler, Point aDirection) {
        aCrawler.slideTowards(aDirection);
    }

    // crawler turning - silt does not affect turning

    @Override
    public void turnCrawler(SurveyCrawler aCrawler, CrawlerTurn aTurn) {
        aCrawler.applyTurn(aTurn);
    }
}
