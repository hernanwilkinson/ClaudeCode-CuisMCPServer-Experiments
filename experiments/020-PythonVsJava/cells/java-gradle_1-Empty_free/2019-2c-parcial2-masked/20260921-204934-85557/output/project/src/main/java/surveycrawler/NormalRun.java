package surveycrawler;

public class NormalRun extends CrawlerRun {

    // moving

    @Override
    public Point positionAfterMovingOn(SeabedGround aGround, Point aPosition, Point aDirection) {
        return aGround.positionAfterMovingFrom(aPosition, aDirection);
    }

    @Override
    public void register(CrawlerMovement aMovement) {
        /* There is nothing to undo when the crawler is not in a guarded run */
    }

    // guarded run

    @Override
    public CrawlerRun startGuardedRun() {
        return new GuardedRun();
    }

    @Override
    public CrawlerRun endGuardedRunOn(SurveyCrawler aCrawler) {
        aCrawler.signalInvalidCommand();
        return this;
    }

    @Override
    public void assertIsFinished() {
        /* A normal run is always finished */
    }

    // undoing

    @Override
    public void undoOn(SurveyCrawler aCrawler) {
        /* Movements out of a guarded run are not undone */
    }
}
