package surveycrawler;

public class PositionChange extends CrawlerMovement {

    private final Point displacement;

    // initialization

    public PositionChange(Point aDisplacement) {
        displacement = aDisplacement;
    }

    // undoing

    @Override
    public void undoOn(SurveyCrawler aCrawler) {
        aCrawler.changePositionBy(displacement.negated());
    }
}
