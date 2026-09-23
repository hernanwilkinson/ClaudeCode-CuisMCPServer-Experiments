package surveycrawler;

public class TurnClockwiseCommand extends RepeatableCrawlerCommand {

    // testing

    @Override
    public boolean isFor(char aCommand) {
        return aCommand == 'h';
    }

    // executing

    @Override
    protected void executeOnce(SurveyCrawler aCrawler) {
        aCrawler.turnClockwise();
    }
}
