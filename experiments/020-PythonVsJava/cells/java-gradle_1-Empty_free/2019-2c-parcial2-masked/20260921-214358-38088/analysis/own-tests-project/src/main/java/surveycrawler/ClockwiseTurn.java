package surveycrawler;

public class ClockwiseTurn extends CrawlerTurn {

    // applying

    @Override
    public void applyTo(SurveyCrawler aCrawler) {
        aCrawler.turnFacingClockwise();
    }

    // undoing

    @Override
    public CrawlerAction opposite() {
        return CrawlerTurn.counterClockwise();
    }
}
