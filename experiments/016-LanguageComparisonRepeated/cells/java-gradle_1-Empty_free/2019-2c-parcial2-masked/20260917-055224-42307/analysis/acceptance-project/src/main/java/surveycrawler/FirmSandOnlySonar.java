package surveycrawler;

public class FirmSandOnlySonar implements Sonar {

    // sensing

    @Override
    public GroundType groundTypeAt(Point aPosition) {
        return new FirmSand();
    }
}
