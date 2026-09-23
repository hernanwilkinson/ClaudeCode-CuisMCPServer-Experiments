package surveycrawler;

public class TurnCounterClockwiseCommand extends CrawlerMovement {

    // testing

    @Override
    public boolean isFor(char aCharacter) {
        return aCharacter == 'g';
    }

    // executing

    @Override
    public void executeOn(SurveyCrawler aCrawler) {
        aCrawler.turnCounterClockwise();
    }

    // undoing

    @Override
    public CrawlerMovement inverse() {
        return new TurnClockwiseCommand();
    }
}
