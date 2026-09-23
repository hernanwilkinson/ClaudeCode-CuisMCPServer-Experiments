package surveycrawler;

public class FirmSandSonar implements Sonar {

    // ground detection

    @Override
    public SeabedGround groundAt(Point aPosition) {
        return new FirmSand();
    }
}
