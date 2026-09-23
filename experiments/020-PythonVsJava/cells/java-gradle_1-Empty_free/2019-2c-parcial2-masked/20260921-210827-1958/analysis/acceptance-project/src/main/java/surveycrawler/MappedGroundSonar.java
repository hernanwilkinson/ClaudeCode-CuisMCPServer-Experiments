package surveycrawler;

import java.util.HashMap;
import java.util.Map;

public class MappedGroundSonar implements CrawlerSonar {

    private final Map<Point, CrawlerGround> grounds = new HashMap<>();

    // surveying

    public MappedGroundSonar withFirmSandAt(Point aPosition) {
        return withGroundAt(aPosition, new FirmSandGround());
    }

    public MappedGroundSonar withSiltAt(Point aPosition) {
        return withGroundAt(aPosition, new SiltGround());
    }

    public MappedGroundSonar withBoulderAt(Point aPosition) {
        return withGroundAt(aPosition, new BoulderGround());
    }

    public MappedGroundSonar withGroundAt(Point aPosition, CrawlerGround aGround) {
        grounds.put(aPosition, aGround);
        return this;
    }

    // sonar

    @Override
    public CrawlerGround groundAt(Point aPosition) {
        return grounds.getOrDefault(aPosition, new FirmSandGround());
    }
}
