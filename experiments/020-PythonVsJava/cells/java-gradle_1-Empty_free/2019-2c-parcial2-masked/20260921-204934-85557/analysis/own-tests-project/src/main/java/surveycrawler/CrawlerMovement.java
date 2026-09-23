package surveycrawler;

public abstract class CrawlerMovement extends CrawlerCommand {

    // undoing

    public abstract CrawlerMovement inverse();

    // executing

    @Override
    public void repeatTimesOn(int aNumberOfTimes, SurveyCrawler aCrawler) {
        for (int i = 1; i <= aNumberOfTimes; i++) {
            executeOn(aCrawler);
        }
    }
}
