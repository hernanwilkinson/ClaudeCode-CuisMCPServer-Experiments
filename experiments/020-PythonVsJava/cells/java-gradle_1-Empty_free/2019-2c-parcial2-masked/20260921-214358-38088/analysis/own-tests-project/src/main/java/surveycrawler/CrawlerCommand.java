package surveycrawler;

public abstract class CrawlerCommand {

    // instance creation

    public static CrawlerCommand commandFor(char aCommand) {
        CrawlerCommand[] knownCommands = knownCommands();
        for (int i = 0; i < knownCommands.length; i++) {
            if (knownCommands[i].isFor(aCommand)) {
                return knownCommands[i].forCommand(aCommand);
            }
        }
        return new InvalidCommand();
    }

    private static CrawlerCommand[] knownCommands() {
        return new CrawlerCommand[] {
            new AdvanceCommand(),
            new RetreatCommand(),
            new TurnClockwiseCommand(),
            new TurnCounterClockwiseCommand(),
            new RepeatLastCommand(),
            new StartGuardedRunCommand(),
            new EndGuardedRunCommand()
        };
    }

    // testing

    public abstract boolean isFor(char aCommand);

    protected CrawlerCommand forCommand(char aCommand) {
        return this;
    }

    // executing

    public void executeOn(SurveyCrawler aCrawler) {
        executeOnce(aCrawler);
        aCrawler.lastCommandIs(commandToRepeat());
    }

    public void repeatOn(SurveyCrawler aCrawler, int aNumberOfRepetitions) {
        for (int i = 0; i < aNumberOfRepetitions; i++) {
            executeOn(aCrawler);
        }
    }

    protected abstract void executeOnce(SurveyCrawler aCrawler);

    // repeating - only repeatable commands can be repeated by a following digit

    protected CrawlerCommand commandToRepeat() {
        return new InvalidCommand();
    }
}
