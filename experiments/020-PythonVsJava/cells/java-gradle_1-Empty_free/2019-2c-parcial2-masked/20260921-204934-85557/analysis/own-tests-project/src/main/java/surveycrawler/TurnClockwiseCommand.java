package surveycrawler;

public class TurnClockwiseCommand extends CrawlerMovement {

    // testing

    @Override
    public boolean isFor(char aCharacter) {
        return aCharacter == 'h';
    }

    // executing

    @Override
    public void executeOn(SurveyCrawler aCrawler) {
        aCrawler.turnClockwise();
    }

    // undoing

    @Override
    public CrawlerMovement inverse() {
        return new TurnCounterClockwiseCommand();
    }
}
