package surveycrawler;

public class FirmSandSonar implements Sonar {

    private final Ground firmSand = new FirmSand();

    @Override
    public Ground groundAt(Point aPosition) {
        return firmSand;
    }
}
