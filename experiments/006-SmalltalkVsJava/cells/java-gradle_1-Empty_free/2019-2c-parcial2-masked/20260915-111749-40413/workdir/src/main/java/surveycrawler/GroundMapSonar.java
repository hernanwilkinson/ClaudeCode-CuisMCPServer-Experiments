package surveycrawler;

import java.util.HashMap;
import java.util.Map;

public class GroundMapSonar implements Sonar {

    private final Map<Point, Ground> grounds = new HashMap<>();

    // ground map

    public GroundMapSonar withGroundAt(Point aPosition, Ground aGround) {
        grounds.put(aPosition, aGround);
        return this;
    }

    public GroundMapSonar withBoulderAt(Point aPosition) {
        return withGroundAt(aPosition, new Boulder());
    }

    public GroundMapSonar withSiltAt(Point aPosition) {
        return withGroundAt(aPosition, new Silt());
    }

    public GroundMapSonar withSiltAt(Point aPosition, SiltSlide aSlide) {
        return withGroundAt(aPosition, new Silt(aSlide));
    }

    // sensing

    @Override
    public Ground groundAt(Point aPosition) {
        return grounds.getOrDefault(aPosition, new FirmSand());
    }
}
