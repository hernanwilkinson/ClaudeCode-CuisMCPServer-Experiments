package surveycrawler;

import java.util.Random;

public class FixedRandom extends Random {

    private final int value;

    public FixedRandom(int aValue) {
        value = aValue;
    }

    @Override
    public int nextInt(int aLimit) {
        return value;
    }
}
