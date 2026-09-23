package surveycrawler;

public class CrawlerFacingDown extends CrawlerFacing {

    // facing name

    @Override
    public String facingName() {
        return "Down";
    }

    // moving

    @Override
    public void retreat(SurveyCrawler aCrawler) {
        aCrawler.moveUp();
    }

    @Override
    public void advance(SurveyCrawler aCrawler) {
        aCrawler.moveDown();
    }

    // facing

    @Override
    public void turnCounterClockwise(SurveyCrawler aCrawler) {
        aCrawler.faceRight();
    }

    @Override
    public void turnClockwise(SurveyCrawler aCrawler) {
        aCrawler.faceLeft();
    }
}
