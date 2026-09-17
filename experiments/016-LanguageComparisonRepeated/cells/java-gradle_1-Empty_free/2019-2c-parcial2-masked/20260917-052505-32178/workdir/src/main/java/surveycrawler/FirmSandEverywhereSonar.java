package surveycrawler;

public class FirmSandEverywhereSonar implements Sonar {

    @Override
    public GroundType groundTypeAt(Point aPosition) {
        return new FirmSandGround();
    }
}
