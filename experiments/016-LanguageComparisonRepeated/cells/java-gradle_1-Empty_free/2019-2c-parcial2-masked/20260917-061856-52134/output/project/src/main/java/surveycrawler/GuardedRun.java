package surveycrawler;

import java.util.ArrayDeque;
import java.util.Deque;

public class GuardedRun extends CrawlerRunState {

    private final Deque<Runnable> undos = new ArrayDeque<>();

    // guarded run

    @Override
    public void startGuardedRun(SurveyCrawler aCrawler) {
        aCrawler.signalGuardedRunAlreadyStarted();
    }

    @Override
    public void finishGuardedRun(SurveyCrawler aCrawler) {
        aCrawler.changeRunStateTo(new NormalRun());
    }

    // command processing

    @Override
    public void finishSequence(SurveyCrawler aCrawler) {
        aCrawler.signalGuardedRunNotFinished();
    }

    @Override
    public void abort(SurveyCrawler aCrawler) {
        aCrawler.changeRunStateTo(new NormalRun());
        while (!undos.isEmpty()) {
            undos.pop().run();
        }
    }

    // moving

    @Override
    public void registerUndo(Runnable anUndo) {
        undos.push(anUndo);
    }

    @Override
    public void siltReached(SurveyCrawler aCrawler) {
        aCrawler.signalSiltFoundDuringGuardedRun();
    }
}
