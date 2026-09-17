package surveycrawler;

public class CrawlerFacingUp extends CrawlerFacing {

    // facing name

    @Override
    public String facingName() {
        return "Up";
    }

    // moving

    @Override
    public void retreat(SurveyCrawler aCrawler) {
        aCrawler.moveDown();
    }

    @Override
    public void advance(SurveyCrawler aCrawler) {
        aCrawler.moveUp();
    }

    // facing

    @Override
    public void turnCounterClockwise(SurveyCrawler aCrawler) {
        aCrawler.faceLeft();
    }

    @Override
    public void turnClockwise(SurveyCrawler aCrawler) {
        aCrawler.faceRight();
    }
}
