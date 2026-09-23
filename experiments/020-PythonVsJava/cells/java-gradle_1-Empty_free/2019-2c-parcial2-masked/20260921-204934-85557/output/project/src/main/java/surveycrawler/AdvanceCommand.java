package surveycrawler;

public class AdvanceCommand extends CrawlerMovement {

    // testing

    @Override
    public boolean isFor(char aCharacter) {
        return aCharacter == 'a';
    }

    // executing

    @Override
    public void executeOn(SurveyCrawler aCrawler) {
        aCrawler.advance();
    }

    // undoing

    @Override
    public CrawlerMovement inverse() {
        return new RetreatCommand();
    }
}
