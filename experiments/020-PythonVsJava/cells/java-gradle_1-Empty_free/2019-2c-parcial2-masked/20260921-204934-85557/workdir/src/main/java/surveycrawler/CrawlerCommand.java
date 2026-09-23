package surveycrawler;

public abstract class CrawlerCommand {

    // instance creation

    public static CrawlerCommand commandFor(char aCharacter) {
        CrawlerCommand[] commandPrototypes = commandPrototypes();
        for (int i = 0; i < commandPrototypes.length; i++) {
            if (commandPrototypes[i].isFor(aCharacter)) {
                return commandPrototypes[i].forCharacter(aCharacter);
            }
        }
        return new InvalidCommand();
    }

    private static CrawlerCommand[] commandPrototypes() {
        return new CrawlerCommand[] {
            new AdvanceCommand(),
            new RetreatCommand(),
            new TurnClockwiseCommand(),
            new TurnCounterClockwiseCommand(),
            new StartGuardedRunCommand(),
            new EndGuardedRunCommand(),
            new RepeatLastCommand('0')
        };
    }

    protected CrawlerCommand forCharacter(char aCharacter) {
        return this;
    }

    // testing

    public abstract boolean isFor(char aCharacter);

    // executing

    public abstract void executeOn(SurveyCrawler aCrawler);

    /* Only the commands the crawler can repeat understand how to do it, the rest of them are
       an invalid command when a digit follows them */
    public void repeatTimesOn(int aNumberOfTimes, SurveyCrawler aCrawler) {
        aCrawler.signalInvalidCommand();
    }
}
