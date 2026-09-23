package surveycrawler;

public class LastCommandToRepeat extends CommandToRepeat {

    private final char command;

    public LastCommandToRepeat(char aCommand) {
        command = aCommand;
    }

    @Override
    public void repeatOn(SurveyCrawler aCrawler, int aNumberOfRepetitions) {
        for (int i = 1; i <= aNumberOfRepetitions; i++) {
            aCrawler.executeCommand(command);
        }
    }
}
