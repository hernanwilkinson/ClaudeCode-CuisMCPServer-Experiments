package surveycrawler;

public abstract class CrawlerFacing {

    // instance creation

    public static CrawlerFacing facing(String aFacingName) {
        CrawlerFacing[] subclassInstances = subclassInstances();
        for (int i = 0; i < subclassInstances.length; i++) {
            if (subclassInstances[i].isFor(aFacingName)) {
                return subclassInstances[i];
            }
        }
        throw new RuntimeException(SurveyCrawler.invalidFacingErrorDescription());
    }

    private static CrawlerFacing[] subclassInstances() {
        return new CrawlerFacing[] {
            new CrawlerFacingRight(),
            new CrawlerFacingUp(),
            new CrawlerFacingDown(),
            new CrawlerFacingLeft()
        };
    }

    // facing name

    public abstract String facingName();

    // facing

    public abstract void turnCounterClockwise(SurveyCrawler aCrawler);

    public abstract void turnClockwise(SurveyCrawler aCrawler);

    // testing

    public boolean isFacing(String aFacingName) {
        return isFor(aFacingName);
    }

    public boolean isFor(String aFacingName) {
        return facingName().equals(aFacingName);
    }

    // moving

    public abstract void retreat(SurveyCrawler aCrawler);

    public abstract void advance(SurveyCrawler aCrawler);
}
