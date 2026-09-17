package surveycrawler;

public class FirmSandGround extends GroundType {

    // moving

    @Override
    public void moveTowards(SurveyCrawler aCrawler, Point aDirection) {
        aCrawler.stepTowards(aDirection);
    }

    // facing

    @Override
    public void assertCanTurn(SurveyCrawler aCrawler) {
    }
}
