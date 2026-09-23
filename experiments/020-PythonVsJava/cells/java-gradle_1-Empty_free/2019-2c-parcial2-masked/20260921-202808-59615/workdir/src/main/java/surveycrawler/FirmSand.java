package surveycrawler;

public class FirmSand extends GroundType {

    // moving

    @Override
    public void moveCrawlerInDirection(SurveyCrawler aCrawler, Point aDirection) {
        aCrawler.moveBy(aDirection);
    }

    // facing

    @Override
    public void turnCrawler(SurveyCrawler aCrawler, Runnable aTurn) {
        aTurn.run();
    }
}
