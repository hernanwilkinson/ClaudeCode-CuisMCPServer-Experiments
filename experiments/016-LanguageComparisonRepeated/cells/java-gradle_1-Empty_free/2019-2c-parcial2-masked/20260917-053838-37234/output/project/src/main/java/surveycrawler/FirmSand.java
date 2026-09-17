package surveycrawler;

public class FirmSand extends GroundType {

    // moving

    @Override
    public void moveTowards(SurveyCrawler aCrawler, Point aDirection) {
        aCrawler.displaceBy(aDirection);
    }

    // facing

    @Override
    public void assertCanTurn(SurveyCrawler aCrawler) {
    }
}
