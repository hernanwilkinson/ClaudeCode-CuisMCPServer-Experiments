package surveycrawler;

public class CounterClockwiseTurn extends CrawlerMovement {

    @Override
    public void undoOn(SurveyCrawler aCrawler) {
        aCrawler.rotateClockwise();
    }
}
