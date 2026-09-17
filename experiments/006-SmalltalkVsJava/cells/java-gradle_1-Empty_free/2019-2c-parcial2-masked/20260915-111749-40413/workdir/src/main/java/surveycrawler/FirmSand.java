package surveycrawler;

public class FirmSand extends Ground {

    // moving

    @Override
    public void moveCrawlerTo(SurveyCrawler aCrawler, Point aNewPosition, Point aDirection) {
        aCrawler.moveTo(aNewPosition);
    }

    // facing

    @Override
    public void turnCrawlerClockwise(SurveyCrawler aCrawler) {
        aCrawler.turnFacingClockwise();
    }

    @Override
    public void turnCrawlerCounterClockwise(SurveyCrawler aCrawler) {
        aCrawler.turnFacingCounterClockwise();
    }
}
