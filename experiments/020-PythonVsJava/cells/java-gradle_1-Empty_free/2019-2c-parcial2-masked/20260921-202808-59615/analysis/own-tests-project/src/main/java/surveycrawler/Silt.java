package surveycrawler;

public class Silt extends GroundType {

    private final SiltSlide slide;

    // initialization

    public Silt() {
        this(new RandomSiltSlide());
    }

    public Silt(SiltSlide aSlide) {
        slide = aSlide;
    }

    // moving

    @Override
    public void moveCrawlerInDirection(SurveyCrawler aCrawler, Point aDirection) {
        aCrawler.slideInDirection(aDirection, slide);
    }

    // facing

    @Override
    public void turnCrawler(SurveyCrawler aCrawler, Runnable aTurn) {
        aTurn.run();
    }
}
