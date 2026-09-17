package surveycrawler;

public class Silt extends GroundType {

    // moving

    @Override
    public void moveTowards(SurveyCrawler aCrawler, Point aDirection) {
        aCrawler.slideOnSiltTowards(aDirection);
    }

    // facing

    @Override
    public void assertCanTurn(SurveyCrawler aCrawler) {
    }
}
