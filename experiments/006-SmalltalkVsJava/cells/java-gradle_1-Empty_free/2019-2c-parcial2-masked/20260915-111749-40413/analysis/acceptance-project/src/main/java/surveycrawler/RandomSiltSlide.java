package surveycrawler;

import java.util.Random;

public class RandomSiltSlide implements SiltSlide {

    private final Random random = new Random();

    // sliding

    public static int maximumCellsToSlide() {
        return 10;
    }

    @Override
    public int cellsToSlide() {
        return random.nextInt(maximumCellsToSlide()) + 1;
    }
}
