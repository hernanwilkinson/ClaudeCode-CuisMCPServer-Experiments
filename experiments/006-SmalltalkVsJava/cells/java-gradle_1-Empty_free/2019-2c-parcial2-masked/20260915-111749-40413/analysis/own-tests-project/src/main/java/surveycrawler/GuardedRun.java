package surveycrawler;

import java.util.ArrayList;
import java.util.List;

public class GuardedRun extends CrawlerRun {

    private final CrawlerFacing facingWhenStarted;
    private final List<Point> moves = new ArrayList<>();

    // initialization

    public GuardedRun(CrawlerFacing aFacing) {
        facingWhenStarted = aFacing;
    }

    // moving

    @Override
    public void registerMove(Point aMove) {
        moves.add(aMove);
    }

    @Override
    public void slideOn(SurveyCrawler aCrawler, Silt aSilt, Point aNewPosition, Point aDirection) {
        aCrawler.signalCanNotSlideDuringGuardedRun();
    }

    // guarded run

    @Override
    public void startGuardedRunOn(SurveyCrawler aCrawler) {
        aCrawler.signalCanNotStartGuardedRunDuringGuardedRun();
    }

    @Override
    public void undoOn(SurveyCrawler aCrawler) {
        for (int i = moves.size() - 1; i >= 0; i--) {
            aCrawler.undoMove(moves.get(i));
        }
        aCrawler.faceTo(facingWhenStarted);
    }
}
