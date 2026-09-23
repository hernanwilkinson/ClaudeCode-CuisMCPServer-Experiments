package surveycrawler;

import java.util.HashMap;
import java.util.Map;

/**
 * Sonar used by the tests. Every position not explicitly configured is firm sand.
 */
public class GroundMapSonar implements Sonar {

    private final Map<Point, Ground> grounds = new HashMap<>();

    // configuring

    public GroundMapSonar withBoulderAt(Point aPosition) {
        grounds.put(aPosition, Ground.boulder());
        return this;
    }

    public GroundMapSonar withSiltAt(Point aPosition) {
        grounds.put(aPosition, Ground.silt());
        return this;
    }

    // sensing

    @Override
    public Ground groundAt(Point aPosition) {
        return grounds.getOrDefault(aPosition, Ground.firmSand());
    }
}
