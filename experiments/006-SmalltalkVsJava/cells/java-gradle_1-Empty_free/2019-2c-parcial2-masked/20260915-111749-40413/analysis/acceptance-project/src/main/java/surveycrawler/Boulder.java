package surveycrawler;

public class Boulder extends Ground {

    // moving

    @Override
    public void moveCrawlerTo(SurveyCrawler aCrawler, Point aNewPosition, Point aDirection) {
        aCrawler.signalCanNotMoveToBoulder();
    }

    // facing

    @Override
    public void turnCrawlerClockwise(SurveyCrawler aCrawler) {
        aCrawler.signalCanNotTurnOnBoulder();
    }

    @Override
    public void turnCrawlerCounterClockwise(SurveyCrawler aCrawler) {
        aCrawler.signalCanNotTurnOnBoulder();
    }
}
