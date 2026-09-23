package surveycrawler;

public class CounterClockwiseTurn extends CrawlerTurn {

    // applying

    @Override
    public void applyTo(SurveyCrawler aCrawler) {
        aCrawler.turnFacingCounterClockwise();
    }

    // undoing

    @Override
    public CrawlerAction opposite() {
        return CrawlerTurn.clockwise();
    }
}
