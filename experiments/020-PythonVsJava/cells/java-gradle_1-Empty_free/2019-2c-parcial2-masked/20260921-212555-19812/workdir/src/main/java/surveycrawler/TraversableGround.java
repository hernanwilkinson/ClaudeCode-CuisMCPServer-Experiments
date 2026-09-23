package surveycrawler;

public abstract class TraversableGround extends Ground {

    // facing - the crawler can always turn on a ground it can be on

    @Override
    public void turnCrawlerClockwise(SurveyCrawler aCrawler) {
        aCrawler.turnFacingClockwise();
    }

    @Override
    public void turnCrawlerCounterClockwise(SurveyCrawler aCrawler) {
        aCrawler.turnFacingCounterClockwise();
    }
}
