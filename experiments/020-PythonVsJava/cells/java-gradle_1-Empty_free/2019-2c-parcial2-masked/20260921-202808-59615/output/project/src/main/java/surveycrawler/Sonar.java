package surveycrawler;

@FunctionalInterface
public interface Sonar {

    // sensing

    GroundType groundTypeAt(Point aPosition);
}
