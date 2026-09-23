package surveycrawler;

import java.util.Random;

public class RandomSlideDistance implements SlideDistance {

    private final Random random = new Random();

    @Override
    public int cellsToSlide() {
        return random.nextInt(Silt.slideCellsLimit()) + 1;
    }
}
