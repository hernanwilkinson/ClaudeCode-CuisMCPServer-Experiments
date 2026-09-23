package surveycrawler;

public class Boulder extends GroundType {

    // moving

    @Override
    public void moveCrawlerInDirection(SurveyCrawler aCrawler, Point aDirection) {
        aCrawler.signalBoulderFound();
    }

    // facing

    @Override
    public void turnCrawler(SurveyCrawler aCrawler, Runnable aTurn) {
        aCrawler.signalBoulderFound();
    }
}
