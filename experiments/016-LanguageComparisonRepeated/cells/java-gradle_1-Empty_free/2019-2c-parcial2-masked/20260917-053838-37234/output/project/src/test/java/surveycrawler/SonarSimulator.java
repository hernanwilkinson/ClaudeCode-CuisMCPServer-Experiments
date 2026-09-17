package surveycrawler;

import java.util.HashMap;
import java.util.Map;
import java.util.Random;

public class SonarSimulator implements Sonar {

    private final Map<Point, GroundType> groundTypes = new HashMap<>();

    public SonarSimulator boulderAt(Point aPosition) {
        groundTypes.put(aPosition, new Boulder());
        return this;
    }

    public SonarSimulator siltAt(Point aPosition, Random aRandom) {
        groundTypes.put(aPosition, new Silt(aRandom));
        return this;
    }

    @Override
    public GroundType groundTypeAt(Point aPosition) {
        return groundTypes.getOrDefault(aPosition, new FirmSand());
    }
}
