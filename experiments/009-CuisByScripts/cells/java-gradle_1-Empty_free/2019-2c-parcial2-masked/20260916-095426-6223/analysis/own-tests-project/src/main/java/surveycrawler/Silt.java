package surveycrawler;

public class Silt extends GroundType {

    // moving

    @Override
    public void moveOnto(SurveyCrawler aCrawler, Point aStep) {
        aCrawler.slideTowards(aStep);
    }

    // facing

    @Override
    public void turnOn(SurveyCrawler aCrawler, Runnable aTurn) {
        aTurn.run();
    }
}
