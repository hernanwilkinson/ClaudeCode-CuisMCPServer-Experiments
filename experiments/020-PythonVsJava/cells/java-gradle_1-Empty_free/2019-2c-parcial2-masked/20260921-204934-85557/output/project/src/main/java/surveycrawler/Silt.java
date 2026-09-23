package surveycrawler;

public class Silt extends TraversableGround {

    private final SlideDistance slideDistance;

    // instance creation

    public Silt() {
        this(new RandomSlideDistance());
    }

    public Silt(SlideDistance aSlideDistance) {
        slideDistance = aSlideDistance;
    }

    public static int slideCellsLimit() {
        return 10;
    }

    // exceptions

    public static String unpredictableGroundErrorDescription() {
        return "Can not move on an unpredictable ground during a guarded run";
    }

    // moving

    @Override
    public Point positionAfterMovingFrom(Point aPosition, Point aDirection) {
        return aPosition.plus(aDirection.times(slideDistance.cellsToSlide()));
    }

    @Override
    public Point predictablePositionAfterMovingFrom(Point aPosition, Point aDirection) {
        throw new RuntimeException(unpredictableGroundErrorDescription());
    }
}
