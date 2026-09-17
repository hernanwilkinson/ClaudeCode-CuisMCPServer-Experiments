package surveycrawler;

import java.util.Random;

public class Silt extends GroundType {

    public static final int SLIDING_LIMIT = 10;

    private final Random random;

    // initialization

    public Silt(Random aRandom) {
        random = aRandom;
    }

    // moving

    @Override
    public void moveTowards(SurveyCrawler aCrawler, Point aDirection) {
        aCrawler.slideBy(aDirection.times(slidingDistance()));
    }

    public int slidingDistance() {
        return random.nextInt(SLIDING_LIMIT) + 1;
    }

    // facing

    @Override
    public void assertCanTurn(SurveyCrawler aCrawler) {
    }
}
