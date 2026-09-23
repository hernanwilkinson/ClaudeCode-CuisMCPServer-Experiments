package surveycrawler;

public class Boulder extends Ground {

    // moving

    @Override
    public void moveCrawlerTowards(SurveyCrawler aCrawler, Point aDirection) {
        aCrawler.signalBoulderFound();
    }

    // facing

    @Override
    public void turnCrawlerClockwise(SurveyCrawler aCrawler) {
        aCrawler.signalBoulderFound();
    }

    @Override
    public void turnCrawlerCounterClockwise(SurveyCrawler aCrawler) {
        aCrawler.signalBoulderFound();
    }
}
