package surveycrawler;

public class Silt extends Ground {

    // moving

    @Override
    public void moveCrawlerTowards(SurveyCrawler aCrawler, Point aDirection) {
        aCrawler.slideTowards(aDirection);
    }

    // facing

    @Override
    public void turnCrawler(SurveyCrawler aCrawler, Runnable aTurn) {
        aCrawler.turnDoing(aTurn);
    }
}
