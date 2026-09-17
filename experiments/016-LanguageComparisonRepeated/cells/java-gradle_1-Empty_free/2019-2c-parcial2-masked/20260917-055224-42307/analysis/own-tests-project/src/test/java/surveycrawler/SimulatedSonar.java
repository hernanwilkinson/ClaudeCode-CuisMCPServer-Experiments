package surveycrawler;

import java.util.HashMap;
import java.util.Map;

public class SimulatedSonar implements Sonar {

    private final Map<Point, GroundType> groundTypes = new HashMap<>();

    // configuration

    public SimulatedSonar withBoulderAt(Point aPosition) {
        groundTypes.put(aPosition, new Boulder());
        return this;
    }

    public SimulatedSonar withSiltAt(Point aPosition) {
        groundTypes.put(aPosition, new Silt());
        return this;
    }

    // sensing

    @Override
    public GroundType groundTypeAt(Point aPosition) {
        return groundTypes.getOrDefault(aPosition, new FirmSand());
    }
}
