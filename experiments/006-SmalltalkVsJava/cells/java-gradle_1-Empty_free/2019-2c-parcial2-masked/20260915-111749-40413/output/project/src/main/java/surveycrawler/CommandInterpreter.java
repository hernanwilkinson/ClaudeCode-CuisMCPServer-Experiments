package surveycrawler;

public class CommandInterpreter {

    private final SurveyCrawler crawler;
    private final String commands;
    private int nextCommandIndex;
    private LastCommand lastCommand;

    // initialization

    public CommandInterpreter(SurveyCrawler aCrawler, String aSequenceOfCommands) {
        crawler = aCrawler;
        commands = aSequenceOfCommands;
        nextCommandIndex = 0;
        forgetLastCommand();
    }

    // testing

    public static boolean isRepetitionCommand(char aCommand) {
        return Character.isDigit(aCommand);
    }

    public static boolean isGuardedRunStartCommand(char aCommand) {
        return aCommand == '(';
    }

    public static boolean isGuardedRunEndCommand(char aCommand) {
        return aCommand == ')';
    }

    private boolean hasCommandsToProcess() {
        return nextCommandIndex < commands.length();
    }

    // command processing

    public void process() {
        while (hasCommandsToProcess()) {
            char aCommand = nextCommand();
            if (isGuardedRunStartCommand(aCommand)) {
                processGuardedRun();
            } else {
                processCommand(aCommand);
            }
        }
    }

    private char nextCommand() {
        char aCommand = commands.charAt(nextCommandIndex);
        nextCommandIndex++;
        return aCommand;
    }

    private void processCommand(char aCommand) {
        if (isRepetitionCommand(aCommand)) {
            repeatLastCommand(Character.digit(aCommand, 10));
            return;
        }

        crawler.processCommand(aCommand);
        lastCommand = new RepeatableLastCommand(aCommand);
    }

    private void repeatLastCommand(int aDigit) {
        LastCommand commandToRepeat = lastCommand;
        forgetLastCommand();
        commandToRepeat.repeatOn(crawler, aDigit + 2);
    }

    private void forgetLastCommand() {
        lastCommand = new NoLastCommand();
    }

    // guarded run processing

    private void processGuardedRun() {
        crawler.startGuardedRun();
        forgetLastCommand();
        try {
            processGuardedRunCommands();
            crawler.endGuardedRun();
        } catch (RuntimeException anError) {
            crawler.undoGuardedRun();
            throw anError;
        }
    }

    private void processGuardedRunCommands() {
        while (hasCommandsToProcess()) {
            char aCommand = nextCommand();
            if (isGuardedRunEndCommand(aCommand)) {
                forgetLastCommand();
                return;
            }
            if (isGuardedRunStartCommand(aCommand)) {
                crawler.startGuardedRun();
                return; // not reached: starting a guarded run during a guarded run always signals an error
            }
            processCommand(aCommand);
        }

        crawler.signalUnfinishedGuardedRun();
    }
}
