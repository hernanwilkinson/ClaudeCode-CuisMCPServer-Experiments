package surveycrawler;

/* Represents anything the crawler can not do: an unknown character and also the command
   previous to the first one, which can not be repeated */
public class InvalidCommand extends CrawlerCommand {

    // testing

    @Override
    public boolean isFor(char aCharacter) {
        return false;
    }

    // executing

    @Override
    public void executeOn(SurveyCrawler aCrawler) {
        aCrawler.signalInvalidCommand();
    }
}
