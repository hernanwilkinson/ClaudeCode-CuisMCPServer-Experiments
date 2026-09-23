package surveycrawler;

public class FirmSandGround extends CrawlerGround {

    // moving

    @Override
    public void moveCrawler(SurveyCrawler aCrawler, Point aDirection) {
        aCrawler.perform(new CrawlerDisplacement(aDirection));
    }

    // facing

    @Override
    public void turnCrawler(SurveyCrawler aCrawler, CrawlerMovement aTurn) {
        aCrawler.perform(aTurn);
    }
}
