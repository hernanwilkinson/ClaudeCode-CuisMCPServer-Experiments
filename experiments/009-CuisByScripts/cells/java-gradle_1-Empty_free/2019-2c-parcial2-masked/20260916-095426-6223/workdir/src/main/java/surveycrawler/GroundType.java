package surveycrawler;

public abstract class GroundType {

    // moving

    public abstract void moveOnto(SurveyCrawler aCrawler, Point aStep);

    // facing

    public abstract void turnOn(SurveyCrawler aCrawler, Runnable aTurn);
}
