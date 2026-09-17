package surveycrawler;

public class Boulder extends GroundType {

    // moving

    @Override
    public void moveTowards(SurveyCrawler aCrawler, Point aDirection) {
        aCrawler.signalBoulderFound();
    }

    // facing

    @Override
    public void assertCanTurn(SurveyCrawler aCrawler) {
        aCrawler.signalBoulderFound();
    }
}
