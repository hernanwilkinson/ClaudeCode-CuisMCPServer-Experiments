package surveycrawler;

public abstract class GroundType {

    // moving

    public abstract void moveTowards(SurveyCrawler aCrawler, Point aDirection);

    // facing

    public abstract void assertCanTurn(SurveyCrawler aCrawler);
}
