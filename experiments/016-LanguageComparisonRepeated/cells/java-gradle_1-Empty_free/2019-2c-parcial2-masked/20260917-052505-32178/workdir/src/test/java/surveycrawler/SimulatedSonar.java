package surveycrawler;

import java.util.HashMap;
import java.util.Map;

public class SimulatedSonar implements Sonar {

    private final Map<Point, GroundType> groundTypes = new HashMap<>();

    public SimulatedSonar boulderAt(Point aPosition) {
        groundTypes.put(aPosition, new BoulderGround());
        return this;
    }

    public SimulatedSonar siltAt(Point aPosition) {
        groundTypes.put(aPosition, new SiltGround());
        return this;
    }

    @Override
    public GroundType groundTypeAt(Point aPosition) {
        return groundTypes.getOrDefault(aPosition, new FirmSandGround());
    }
}
