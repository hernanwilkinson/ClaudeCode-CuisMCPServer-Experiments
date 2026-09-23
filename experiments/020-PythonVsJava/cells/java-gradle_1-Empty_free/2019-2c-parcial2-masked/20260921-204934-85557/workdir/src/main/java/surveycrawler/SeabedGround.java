package surveycrawler;

public abstract class SeabedGround {

    // moving

    public abstract Point positionAfterMovingFrom(Point aPosition, Point aDirection);

    /* The position a movement ends at has to be known before moving when the crawler can not
       afford surprises, as it happens during a guarded run */
    public abstract Point predictablePositionAfterMovingFrom(Point aPosition, Point aDirection);

    // facing

    public abstract void turn(CrawlerTurn aTurn);
}
