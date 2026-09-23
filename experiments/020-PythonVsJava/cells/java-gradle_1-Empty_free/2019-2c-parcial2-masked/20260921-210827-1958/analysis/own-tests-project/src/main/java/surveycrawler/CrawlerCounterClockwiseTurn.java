package surveycrawler;

public class CrawlerCounterClockwiseTurn extends CrawlerMovement {

    // moving

    @Override
    public void applyTo(SurveyCrawler aCrawler) {
        aCrawler.applyTurnCounterClockwise();
    }

    @Override
    public void undoOn(SurveyCrawler aCrawler) {
        aCrawler.applyTurnClockwise();
    }
}
