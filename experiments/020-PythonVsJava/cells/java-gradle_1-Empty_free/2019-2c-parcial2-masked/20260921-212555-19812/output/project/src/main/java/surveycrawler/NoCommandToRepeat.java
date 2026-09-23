package surveycrawler;

public class NoCommandToRepeat extends CommandToRepeat {

    @Override
    public void repeatOn(SurveyCrawler aCrawler, int aNumberOfRepetitions) {
        aCrawler.signalInvalidCommand();
    }
}
