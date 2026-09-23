package surveycrawler;

public class FirmSand extends TraversableGround {

    // moving

    @Override
    public void moveCrawlerTowards(SurveyCrawler aCrawler, Point aDirection) {
        aCrawler.moveOneCellTowards(aDirection);
    }
}
