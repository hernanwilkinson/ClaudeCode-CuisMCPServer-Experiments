package surveycrawler;

public class Boulder extends GroundType {

    // moving

    @Override
    public void moveCrawlerOntoItTowards(SurveyCrawler aCrawler, Point aDirection) {
        aCrawler.signalBoulderFound();
    }

    @Override
    public boolean stopsSliding() {
        return true;
    }

    // facing

    @Override
    public void assertCrawlerCanTurnOnIt(SurveyCrawler aCrawler) {
        aCrawler.signalBoulderFound();
    }
}
