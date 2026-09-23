package surveycrawler;

import java.util.ArrayList;
import java.util.List;

public class GuardedRun extends CrawlerRun {

    private final List<CrawlerMovement> movements = new ArrayList<>();

    // exceptions

    public static String guardedRunAlreadyStartedErrorDescription() {
        return "Can not start a guarded run during a guarded run";
    }

    public static String unfinishedGuardedRunErrorDescription() {
        return "Guarded run was not finished";
    }

    // moving

    @Override
    public Point positionAfterMovingOn(SeabedGround aGround, Point aPosition, Point aDirection) {
        return aGround.predictablePositionAfterMovingFrom(aPosition, aDirection);
    }

    @Override
    public void register(CrawlerMovement aMovement) {
        movements.add(aMovement);
    }

    // guarded run

    @Override
    public CrawlerRun startGuardedRun() {
        throw new RuntimeException(guardedRunAlreadyStartedErrorDescription());
    }

    @Override
    public CrawlerRun endGuardedRunOn(SurveyCrawler aCrawler) {
        return new NormalRun();
    }

    @Override
    public void assertIsFinished() {
        throw new RuntimeException(unfinishedGuardedRunErrorDescription());
    }

    // undoing

    @Override
    public void undoOn(SurveyCrawler aCrawler) {
        for (int i = movements.size() - 1; i >= 0; i--) {
            movements.get(i).inverse().executeOn(aCrawler);
        }
    }
}
