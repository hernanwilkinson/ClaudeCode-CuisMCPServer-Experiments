package surveycrawler;

import java.util.Random;

public class RandomSiltSlide implements SiltSlide {

    public static final int slidingLimit = 10;

    private final Random random = new Random();

    // sliding

    @Override
    public int cellsToSlide() {
        return random.nextInt(slidingLimit) + 1;
    }
}
