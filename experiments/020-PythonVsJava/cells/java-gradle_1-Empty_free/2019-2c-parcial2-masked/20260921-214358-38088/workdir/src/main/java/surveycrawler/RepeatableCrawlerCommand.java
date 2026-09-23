package surveycrawler;

public abstract class RepeatableCrawlerCommand extends CrawlerCommand {

    // repeating

    @Override
    protected CrawlerCommand commandToRepeat() {
        return this;
    }
}
