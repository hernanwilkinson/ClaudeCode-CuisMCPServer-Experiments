package surveycrawler;

public class Boulder extends Ground {

    // crawler moving

    @Override
    public void moveCrawler(SurveyCrawler aCrawler, Point aDirection) {
        aCrawler.signalBoulderFound();
    }

    // crawler turning

    @Override
    public void turnCrawler(SurveyCrawler aCrawler, CrawlerTurn aTurn) {
        aCrawler.signalBoulderFound();
    }
}
