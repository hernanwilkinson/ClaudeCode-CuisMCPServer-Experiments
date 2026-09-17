package surveycrawler;

import java.util.ArrayDeque;
import java.util.Deque;

public class GuardedRun extends CrawlerRunMode {

    private final Deque<Runnable> undos = new ArrayDeque<>();

    // guarded run

    @Override
    public void startGuardedRun(SurveyCrawler aCrawler) {
        aCrawler.signalGuardedRunAlreadyStarted();
    }

    @Override
    public void endGuardedRun(SurveyCrawler aCrawler) {
        aCrawler.runUnguarded();
    }

    @Override
    public void finishCommands(SurveyCrawler aCrawler) {
        aCrawler.signalGuardedRunNotFinished();
    }

    @Override
    public void abort(SurveyCrawler aCrawler) {
        while (!undos.isEmpty()) {
            undos.pop().run();
        }
        aCrawler.runUnguarded();
    }

    // moving

    @Override
    public void registerUndo(Runnable anUndo) {
        undos.push(anUndo);
    }

    @Override
    public void slideTowards(SurveyCrawler aCrawler, Point aStep) {
        aCrawler.signalSiltFoundInGuardedRun();
    }
}
