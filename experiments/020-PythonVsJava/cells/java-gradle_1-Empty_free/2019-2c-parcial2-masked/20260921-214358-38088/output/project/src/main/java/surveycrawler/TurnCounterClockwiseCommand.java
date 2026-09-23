package surveycrawler;

public class TurnCounterClockwiseCommand extends RepeatableCrawlerCommand {

    // testing

    @Override
    public boolean isFor(char aCommand) {
        return aCommand == 'g';
    }

    // executing

    @Override
    protected void executeOnce(SurveyCrawler aCrawler) {
        aCrawler.turnCounterClockwise();
    }
}
