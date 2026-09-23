package surveycrawler;

public class CrawlerNormalRun extends CrawlerRun {

    // movement registration

    @Override
    public void registerMovement(CrawlerMovement aMovement) {
        // movements do not have to be undone outside a guarded run
    }

    // moving

    @Override
    public void slideOnSilt(SurveyCrawler aCrawler, Point aDirection) {
        aCrawler.slideRandomlyOnSilt(aDirection);
    }

    // guarded run

    @Override
    public CrawlerRun startGuardedRun(SurveyCrawler aCrawler) {
        return new CrawlerGuardedRun();
    }

    @Override
    public CrawlerRun endGuardedRun(SurveyCrawler aCrawler) {
        aCrawler.signalInvalidCommand();
        return this;
    }

    // command processing

    @Override
    public void finish(SurveyCrawler aCrawler) {
        // nothing to finish
    }

    @Override
    public void undoOn(SurveyCrawler aCrawler) {
        // movements made outside a guarded run are not undone
    }
}
