package surveycrawler;

public class ClockwiseTurn extends CrawlerMovement {

    @Override
    public void undoOn(SurveyCrawler aCrawler) {
        aCrawler.rotateCounterClockwise();
    }
}
