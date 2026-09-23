package surveycrawler;

public class Boulder extends SeabedGround {

    // exceptions

    public static String boulderFoundErrorDescription() {
        return "Can not move onto a boulder";
    }

    private Point signalBoulderFound() {
        throw new RuntimeException(boulderFoundErrorDescription());
    }

    // moving

    @Override
    public Point positionAfterMovingFrom(Point aPosition, Point aDirection) {
        return signalBoulderFound();
    }

    @Override
    public Point predictablePositionAfterMovingFrom(Point aPosition, Point aDirection) {
        return signalBoulderFound();
    }

    // facing

    @Override
    public void turn(CrawlerTurn aTurn) {
        signalBoulderFound();
    }
}
