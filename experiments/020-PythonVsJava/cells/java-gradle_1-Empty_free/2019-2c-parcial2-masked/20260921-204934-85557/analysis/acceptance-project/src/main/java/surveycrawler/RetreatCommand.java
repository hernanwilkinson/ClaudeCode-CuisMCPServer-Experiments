package surveycrawler;

public class RetreatCommand extends CrawlerMovement {

    // testing

    @Override
    public boolean isFor(char aCharacter) {
        return aCharacter == 't';
    }

    // executing

    @Override
    public void executeOn(SurveyCrawler aCrawler) {
        aCrawler.retreat();
    }

    // undoing

    @Override
    public CrawlerMovement inverse() {
        return new AdvanceCommand();
    }
}
