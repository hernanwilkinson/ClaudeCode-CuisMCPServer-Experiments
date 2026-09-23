package surveycrawler;

public class FirmSandSonar implements CrawlerSonar {

    // sonar

    @Override
    public CrawlerGround groundAt(Point aPosition) {
        return new FirmSandGround();
    }
}
