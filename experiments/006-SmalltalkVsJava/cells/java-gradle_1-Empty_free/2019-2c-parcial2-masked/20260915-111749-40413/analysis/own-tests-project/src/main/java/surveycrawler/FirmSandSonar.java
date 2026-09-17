package surveycrawler;

public class FirmSandSonar implements Sonar {

    // sensing

    @Override
    public Ground groundAt(Point aPosition) {
        return new FirmSand();
    }
}
