package surveycrawler;

import java.util.HashMap;
import java.util.Map;

public class SeabedMapSonar implements Sonar {

    private final Map<Point, SeabedGround> grounds = new HashMap<>();

    // initialization

    public SeabedMapSonar withGroundAt(SeabedGround aGround, Point aPosition) {
        grounds.put(aPosition, aGround);
        return this;
    }

    // ground detection

    @Override
    public SeabedGround groundAt(Point aPosition) {
        SeabedGround aGround = grounds.get(aPosition);
        return aGround == null ? new FirmSand() : aGround;
    }
}
