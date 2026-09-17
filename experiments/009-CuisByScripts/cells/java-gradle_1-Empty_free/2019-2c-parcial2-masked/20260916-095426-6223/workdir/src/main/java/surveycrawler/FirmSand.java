package surveycrawler;

public class FirmSand extends GroundType {

    // moving

    @Override
    public void moveOnto(SurveyCrawler aCrawler, Point aStep) {
        aCrawler.moveBy(aStep);
    }

    // facing

    @Override
    public void turnOn(SurveyCrawler aCrawler, Runnable aTurn) {
        aTurn.run();
    }
}
