package surveycrawler;

public class BoulderGround extends CrawlerGround {

    // moving

    @Override
    public void moveCrawler(SurveyCrawler aCrawler, Point aDirection) {
        aCrawler.signalCanNotMoveToBoulder();
    }

    // facing

    @Override
    public void turnCrawler(SurveyCrawler aCrawler, CrawlerMovement aTurn) {
        aCrawler.signalCanNotTurnOnBoulder();
    }
}
