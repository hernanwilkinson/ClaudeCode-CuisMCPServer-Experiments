package surveycrawler;

public class Boulder extends GroundType {

    // moving

    @Override
    public void moveOnto(SurveyCrawler aCrawler, Point aStep) {
        aCrawler.signalBoulderFound();
    }

    // facing

    @Override
    public void turnOn(SurveyCrawler aCrawler, Runnable aTurn) {
        aCrawler.signalBoulderFound();
    }
}
