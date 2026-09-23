package surveycrawler;

public class FirmSand extends TraversableGround {

    // moving

    @Override
    public Point positionAfterMovingFrom(Point aPosition, Point aDirection) {
        return aPosition.plus(aDirection);
    }

    @Override
    public Point predictablePositionAfterMovingFrom(Point aPosition, Point aDirection) {
        return positionAfterMovingFrom(aPosition, aDirection);
    }
}
