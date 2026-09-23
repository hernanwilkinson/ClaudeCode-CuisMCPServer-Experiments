package surveycrawler;

public class FirmSand extends Ground {

    // crawler moving

    @Override
    public void moveCrawler(SurveyCrawler aCrawler, Point aDirection) {
        aCrawler.moveOneCellTowards(aDirection);
    }

    // crawler turning

    @Override
    public void turnCrawler(SurveyCrawler aCrawler, CrawlerTurn aTurn) {
        aCrawler.applyTurn(aTurn);
    }
}
