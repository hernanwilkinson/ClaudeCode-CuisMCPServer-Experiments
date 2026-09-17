package surveycrawler;

import java.util.HashMap;
import java.util.Map;

public class SimulatedSonar implements Sonar {

    private final Map<Point, GroundType> grounds = new HashMap<>();

    public SimulatedSonar withBoulderAt(Point aPosition) {
        grounds.put(aPosition, new Boulder());
        return this;
    }

    public SimulatedSonar withSiltAt(Point aPosition) {
        grounds.put(aPosition, new Silt());
        return this;
    }

    @Override
    public GroundType groundAt(Point aPosition) {
        return grounds.getOrDefault(aPosition, new FirmSand());
    }
}
