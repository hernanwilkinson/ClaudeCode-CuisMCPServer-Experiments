package surveycrawler;

import java.util.HashMap;
import java.util.Map;

public class SeabedSonar implements Sonar {

    private final Map<Point, GroundType> groundTypes = new HashMap<>();
    private final GroundType defaultGroundType = new FirmSand();

    // instance creation

    public static SeabedSonar firmSeabed() {
        return new SeabedSonar();
    }

    // initialization

    public SeabedSonar withGroundTypeAt(GroundType aGroundType, Point aPosition) {
        groundTypes.put(aPosition, aGroundType);
        return this;
    }

    public SeabedSonar withBoulderAt(Point aPosition) {
        return withGroundTypeAt(new Boulder(), aPosition);
    }

    public SeabedSonar withSiltAt(Point aPosition) {
        return withGroundTypeAt(new Silt(), aPosition);
    }

    public SeabedSonar withSiltAt(Point aPosition, SiltSlide aSlide) {
        return withGroundTypeAt(new Silt(aSlide), aPosition);
    }

    // sensing

    @Override
    public GroundType groundTypeAt(Point aPosition) {
        return groundTypes.getOrDefault(aPosition, defaultGroundType);
    }
}
