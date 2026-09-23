package surveycrawler;

public class Displacement extends CrawlerMovement {

    private final Point direction;

    public Displacement(Point aDirection) {
        direction = aDirection;
    }

    @Override
    public void undoOn(SurveyCrawler aCrawler) {
        aCrawler.changePositionTowards(direction.inverted());
    }
}
