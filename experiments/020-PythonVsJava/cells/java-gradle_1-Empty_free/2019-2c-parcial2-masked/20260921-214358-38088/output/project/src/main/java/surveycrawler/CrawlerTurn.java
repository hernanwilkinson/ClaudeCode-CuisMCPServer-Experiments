package surveycrawler;

public abstract class CrawlerTurn extends CrawlerAction {

    // instance creation

    public static CrawlerTurn clockwise() {
        return new ClockwiseTurn();
    }

    public static CrawlerTurn counterClockwise() {
        return new CounterClockwiseTurn();
    }
}
