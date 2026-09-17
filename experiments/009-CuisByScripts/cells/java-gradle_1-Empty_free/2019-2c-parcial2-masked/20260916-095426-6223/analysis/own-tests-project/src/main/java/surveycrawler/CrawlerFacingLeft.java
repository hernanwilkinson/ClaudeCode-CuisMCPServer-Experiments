package surveycrawler;

public class CrawlerFacingLeft extends CrawlerFacing {

    // facing name

    @Override
    public String facingName() {
        return "Left";
    }

    // moving

    @Override
    public void retreat(SurveyCrawler aCrawler) {
        aCrawler.moveRight();
    }

    @Override
    public void advance(SurveyCrawler aCrawler) {
        aCrawler.moveLeft();
    }

    // facing

    @Override
    public void turnCounterClockwise(SurveyCrawler aCrawler) {
        aCrawler.faceDown();
    }

    @Override
    public void turnClockwise(SurveyCrawler aCrawler) {
        aCrawler.faceUp();
    }
}
