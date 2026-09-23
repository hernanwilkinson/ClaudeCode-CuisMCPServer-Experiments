package surveycrawler;

public class CrawlerDisplacement extends CrawlerMovement {

    private final Point displacement;

    // initialization

    public CrawlerDisplacement(Point aDisplacement) {
        displacement = aDisplacement;
    }

    // moving

    @Override
    public void applyTo(SurveyCrawler aCrawler) {
        aCrawler.applyDisplacement(displacement);
    }

    @Override
    public void undoOn(SurveyCrawler aCrawler) {
        aCrawler.applyDisplacement(displacement.negated());
    }
}
