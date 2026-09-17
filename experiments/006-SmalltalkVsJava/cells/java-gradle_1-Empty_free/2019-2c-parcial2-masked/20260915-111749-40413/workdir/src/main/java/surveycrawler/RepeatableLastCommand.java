package surveycrawler;

public class RepeatableLastCommand extends LastCommand {

    private final char command;

    // initialization

    public RepeatableLastCommand(char aCommand) {
        command = aCommand;
    }

    // command processing

    @Override
    public void repeatOn(SurveyCrawler aCrawler, int numberOfTimes) {
        for (int i = 0; i < numberOfTimes; i++) {
            aCrawler.processCommand(command);
        }
    }
}
