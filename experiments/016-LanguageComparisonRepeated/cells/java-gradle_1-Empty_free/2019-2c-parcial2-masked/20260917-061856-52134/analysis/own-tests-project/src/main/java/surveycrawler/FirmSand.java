package surveycrawler;

public class FirmSand extends Ground {

    // moving

    @Override
    public void moveCrawlerTowards(SurveyCrawler aCrawler, Point aDirection) {
        aCrawler.displaceBy(aDirection);
    }

    // facing

    @Override
    public void turnCrawler(SurveyCrawler aCrawler, Runnable aTurn) {
        aCrawler.turnDoing(aTurn);
    }
}
