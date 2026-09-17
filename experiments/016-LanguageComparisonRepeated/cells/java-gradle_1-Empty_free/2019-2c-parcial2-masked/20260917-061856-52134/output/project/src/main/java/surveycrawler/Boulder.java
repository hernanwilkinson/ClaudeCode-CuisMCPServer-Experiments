package surveycrawler;

public class Boulder extends Ground {

    // moving

    @Override
    public void moveCrawlerTowards(SurveyCrawler aCrawler, Point aDirection) {
        aCrawler.signalBoulderFound();
    }

    // facing

    @Override
    public void turnCrawler(SurveyCrawler aCrawler, Runnable aTurn) {
        aCrawler.signalBoulderFound();
    }
}
