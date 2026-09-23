package surveycrawler;

import java.util.Random;

public class Silt extends TraversableGround {

    private final Random random;

    // instance creation

    public Silt() {
        this(new Random());
    }

    public Silt(Random aRandom) {
        random = aRandom;
    }

    // sliding

    public static int maximumSlide() {
        return 10;
    }

    private int slide() {
        return random.nextInt(maximumSlide()) + 1;
    }

    // moving

    @Override
    public void moveCrawlerTowards(SurveyCrawler aCrawler, Point aDirection) {
        aCrawler.moveUnpredictablyTowards(aDirection, slide());
    }
}
