package surveycrawler;

public class CrawlerFacingRight extends CrawlerFacing {

    // facing name

    @Override
    public String facingName() {
        return "Right";
    }

    // moving

    @Override
    public void retreat(SurveyCrawler aCrawler) {
        aCrawler.moveLeft();
    }

    @Override
    public void advance(SurveyCrawler aCrawler) {
        aCrawler.moveRight();
    }

    // facing

    @Override
    public void turnCounterClockwise(SurveyCrawler aCrawler) {
        aCrawler.faceUp();
    }

    @Override
    public void turnClockwise(SurveyCrawler aCrawler) {
        aCrawler.faceDown();
    }
}
