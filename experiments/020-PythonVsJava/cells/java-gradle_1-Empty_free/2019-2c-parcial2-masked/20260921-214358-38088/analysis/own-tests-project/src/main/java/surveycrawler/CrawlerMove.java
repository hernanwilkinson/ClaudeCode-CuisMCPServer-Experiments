package surveycrawler;

public class CrawlerMove extends CrawlerAction {

    private final Point direction;
    private final int numberOfCells;

    // initialization

    public CrawlerMove(Point aDirection, int aNumberOfCells) {
        direction = aDirection;
        numberOfCells = aNumberOfCells;
    }

    // applying

    @Override
    public void applyTo(SurveyCrawler aCrawler) {
        aCrawler.changePositionBy(direction.times(numberOfCells));
    }

    // undoing

    @Override
    public CrawlerAction opposite() {
        return new CrawlerMove(direction, -numberOfCells);
    }
}
