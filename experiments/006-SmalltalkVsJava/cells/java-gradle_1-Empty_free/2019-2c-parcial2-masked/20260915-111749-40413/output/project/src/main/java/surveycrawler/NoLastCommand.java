package surveycrawler;

public class NoLastCommand extends LastCommand {

    // command processing

    @Override
    public void repeatOn(SurveyCrawler aCrawler, int numberOfTimes) {
        aCrawler.signalInvalidCommand();
    }
}
