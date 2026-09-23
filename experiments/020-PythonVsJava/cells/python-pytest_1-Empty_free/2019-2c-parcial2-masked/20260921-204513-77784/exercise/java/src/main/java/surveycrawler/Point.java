package surveycrawler;

public class Point {

    private final int x;
    private final int y;

    public Point(int x, int y) {
        this.x = x;
        this.y = y;
    }

    public int x() {
        return x;
    }

    public int y() {
        return y;
    }

    public Point plus(Point aPoint) {
        return new Point(x + aPoint.x, y + aPoint.y);
    }

    @Override
    public boolean equals(Object anObject) {
        if (!(anObject instanceof Point)) {
            return false;
        }
        Point aPoint = (Point) anObject;
        return x == aPoint.x && y == aPoint.y;
    }

    @Override
    public int hashCode() {
        return 31 * x + y;
    }

    @Override
    public String toString() {
        return x + "@" + y;
    }
}
