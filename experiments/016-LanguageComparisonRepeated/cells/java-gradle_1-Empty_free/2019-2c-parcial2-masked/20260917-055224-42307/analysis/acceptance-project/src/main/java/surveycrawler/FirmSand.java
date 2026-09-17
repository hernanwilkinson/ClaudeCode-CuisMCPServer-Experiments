package surveycrawler;

public class FirmSand extends GroundType {

    // moving

    @Override
    public void moveCrawlerOntoItTowards(SurveyCrawler aCrawler, Point aDirection) {
        aCrawler.changePositionBy(aDirection);
    }

    @Override
    public boolean stopsSliding() {
        return false;
    }

    // facing

    @Override
    public void assertCrawlerCanTurnOnIt(SurveyCrawler aCrawler) {
    }
}
