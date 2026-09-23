package surveycrawler;

public class CrawlerClockwiseTurn extends CrawlerMovement {

    // moving

    @Override
    public void applyTo(SurveyCrawler aCrawler) {
        aCrawler.applyTurnClockwise();
    }

    @Override
    public void undoOn(SurveyCrawler aCrawler) {
        aCrawler.applyTurnCounterClockwise();
    }
}
