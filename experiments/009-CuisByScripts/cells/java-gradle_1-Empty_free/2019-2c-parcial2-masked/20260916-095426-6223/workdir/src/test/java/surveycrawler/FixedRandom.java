package surveycrawler;

import java.util.Random;

public class FixedRandom extends Random {

    private final int value;
    private int lastLimit;

    public FixedRandom(int aValue) {
        value = aValue;
    }

    @Override
    public int nextInt(int aLimit) {
        lastLimit = aLimit;
        return value;
    }

    public int lastLimit() {
        return lastLimit;
    }
}
