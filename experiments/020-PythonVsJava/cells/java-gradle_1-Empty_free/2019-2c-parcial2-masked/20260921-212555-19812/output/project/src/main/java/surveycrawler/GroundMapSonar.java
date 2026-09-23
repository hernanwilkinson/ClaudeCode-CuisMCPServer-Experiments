package surveycrawler;

import java.util.HashMap;
import java.util.Map;

public class GroundMapSonar implements Sonar {

    private final Map<Point, Ground> groundsByPosition = new HashMap<>();
    private final Ground defaultGround = new FirmSand();

    // instance creation

    public static GroundMapSonar empty() {
        return new GroundMapSonar();
    }

    private GroundMapSonar() {
    }

    // configuring

    public GroundMapSonar with(Point aPosition, Ground aGround) {
        groundsByPosition.put(aPosition, aGround);
        return this;
    }

    // sensing

    @Override
    public Ground groundAt(Point aPosition) {
        return groundsByPosition.getOrDefault(aPosition, defaultGround);
    }
}
