package surveycrawler;

import java.util.Random;

/**
 * Random used by the tests so the sliding on silt becomes predictable.
 * It also remembers the limit it was asked for, so the tests can check it.
 */
public class FixedRandom extends Random {

    private final int valueToReturn;
    private int lastLimitAsked = 0;

    // initialization

    public FixedRandom(int aValueToReturn) {
        valueToReturn = aValueToReturn;
    }

    // random

    @Override
    public int nextInt(int aLimit) {
        lastLimitAsked = aLimit;
        return valueToReturn;
    }

    // testing

    public int lastLimitAsked() {
        return lastLimitAsked;
    }
}
