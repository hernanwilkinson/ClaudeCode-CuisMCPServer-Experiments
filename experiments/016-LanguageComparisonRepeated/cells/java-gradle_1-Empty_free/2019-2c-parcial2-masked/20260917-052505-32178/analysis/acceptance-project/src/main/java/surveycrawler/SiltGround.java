package surveycrawler;

public class SiltGround extends GroundType {

    // moving

    @Override
    public void moveTowards(SurveyCrawler aCrawler, Point aDirection) {
        aCrawler.slideTowards(aDirection);
    }

    // facing

    @Override
    public void assertCanTurn(SurveyCrawler aCrawler) {
    }
}
