package surveycrawler;

public class Silt extends Ground {

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
    public void moveCrawlerTo(SurveyCrawler aCrawler, Point aNewPosition, Point aDirection) {
        aCrawler.slideTo(this, aNewPosition, aDirection);
    }

    public void slideCrawlerTo(SurveyCrawler aCrawler, Point aNewPosition, Point aDirection) {
        aCrawler.moveTo(aNewPosition.plus(aDirection.times(slide.cellsToSlide() - 1)));
    }

    // facing - silt does not affect turning, it turns as if it were on firm sand

    @Override
    public void turnCrawlerClockwise(SurveyCrawler aCrawler) {
        aCrawler.turnFacingClockwise();
    }

    @Override
    public void turnCrawlerCounterClockwise(SurveyCrawler aCrawler) {
        aCrawler.turnFacingCounterClockwise();
    }
}
