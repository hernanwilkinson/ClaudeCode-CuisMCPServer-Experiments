package surveycrawler;

import org.junit.jupiter.api.Test;

import java.util.Random;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertThrows;
import static org.junit.jupiter.api.Assertions.assertTrue;

class SurveyCrawlerTest {

    @Test
    void test01EmptyCommandStringDoesNothing() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        crawler.process("");

        assertTrue(crawler.isAtFacing(new Point(1, 2), "Up"));
    }

    @Test
    void test02aWhenFacingUpIncrementsY() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        crawler.process("a");

        assertTrue(crawler.isAtFacing(new Point(1, 3), "Up"));
    }

    @Test
    void test03tWhenFacingUpDecrementsY() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        crawler.process("t");

        assertTrue(crawler.isAtFacing(new Point(1, 1), "Up"));
    }

    @Test
    void test04hWhenFacingUpMakesCrawlerFaceRight() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        crawler.process("h");

        assertTrue(crawler.isAtFacing(new Point(1, 2), "Right"));
    }

    @Test
    void test05gWhenFacingUpMakesCrawlerFaceLeft() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        crawler.process("g");

        assertTrue(crawler.isAtFacing(new Point(1, 2), "Left"));
    }

    @Test
    void test06InvalidCommandsAreNotProcessed() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("x"));

        assertEquals(crawler.invalidCommandErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 2), "Up"));
    }

    @Test
    void test07MoreThanOneCommandAreProcessedCorrectly() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        crawler.process("aa");

        assertTrue(crawler.isAtFacing(new Point(1, 4), "Up"));
    }

    @Test
    void test08aWhenFacingRightIncrementsX() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Right");

        crawler.process("a");

        assertTrue(crawler.isAtFacing(new Point(2, 2), "Right"));
    }

    @Test
    void test09tWhenFacingRightDecrementsX() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Right");

        crawler.process("t");

        assertTrue(crawler.isAtFacing(new Point(0, 2), "Right"));
    }

    @Test
    void test10hWhenFacingRightMakesCrawlerFaceDown() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Right");

        crawler.process("h");

        assertTrue(crawler.isAtFacing(new Point(1, 2), "Down"));
    }

    @Test
    void test11gWhenFacingRightMakesCrawlerFaceUp() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Right");

        crawler.process("g");

        assertTrue(crawler.isAtFacing(new Point(1, 2), "Up"));
    }

    @Test
    void test12athAreProcessedCorrectlyWhenFacingDown() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Down");

        crawler.process("aath");

        assertTrue(crawler.isAtFacing(new Point(1, 1), "Left"));
    }

    @Test
    void test13gWhenFacingDownMakesCrawlerFaceRight() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Down");

        crawler.process("g");

        assertTrue(crawler.isAtFacing(new Point(1, 2), "Right"));
    }

    @Test
    void test14athAreProcessedCorrectlyWhenFacingLeft() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Left");

        crawler.process("aath");

        assertTrue(crawler.isAtFacing(new Point(0, 2), "Up"));
    }

    @Test
    void test15gWhenFacingLeftMakesCrawlerFaceDown() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Left");

        crawler.process("g");

        assertTrue(crawler.isAtFacing(new Point(1, 2), "Down"));
    }

    @Test
    void test16CanNotCreateACrawlerWithAnInvalidFacing() {
        RuntimeException anError = assertThrows(RuntimeException.class, () -> SurveyCrawler.atFacing(new Point(1, 2), "X"));

        assertEquals(SurveyCrawler.invalidFacingErrorDescription(), anError.getMessage());
    }

    // repetition

    @Test
    void test17DigitAfterAdvanceRepeatsItDigitPlusTwoTimes() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        crawler.process("a0");

        assertTrue(crawler.isAtFacing(new Point(1, 5), "Up"));
    }

    @Test
    void test18DigitAfterRetreatRepeatsIt() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        crawler.process("t3");

        assertTrue(crawler.isAtFacing(new Point(1, -4), "Up"));
    }

    @Test
    void test19DigitAfterTurnClockwiseRepeatsIt() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        crawler.process("h0");

        assertTrue(crawler.isAtFacing(new Point(1, 2), "Left"));
    }

    @Test
    void test20DigitAfterTurnCounterClockwiseRepeatsIt() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        crawler.process("g0");

        assertTrue(crawler.isAtFacing(new Point(1, 2), "Right"));
    }

    @Test
    void test21NineIsTheBiggestRepetition() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        crawler.process("a9");

        assertTrue(crawler.isAtFacing(new Point(1, 14), "Up"));
    }

    @Test
    void test22RepetitionOnlyRepeatsTheLastCommand() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        crawler.process("ha0a");

        assertTrue(crawler.isAtFacing(new Point(5, 2), "Right"));
    }

    @Test
    void test23CanNotStartWithARepetition() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        assertThrowsWithDescription(crawler.invalidRepetitionErrorDescription(), () -> crawler.process("3"));

        assertTrue(crawler.isAtFacing(new Point(1, 2), "Up"));
    }

    @Test
    void test24RepetitionIsASingleDigit() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        assertThrowsWithDescription(crawler.invalidRepetitionErrorDescription(), () -> crawler.process("a00"));

        assertTrue(crawler.isAtFacing(new Point(1, 5), "Up"));
    }

    @Test
    void test25CanNotRepeatGuardedRunCommands() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        assertThrowsWithDescription(crawler.invalidRepetitionErrorDescription(), () -> crawler.process("()0"));

        assertTrue(crawler.isAtFacing(new Point(1, 2), "Up"));
    }

    @Test
    void test26CanNotRepeatInvalidCommands() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        assertThrowsWithDescription(crawler.invalidCommandErrorDescription(), () -> crawler.process("x0"));

        assertTrue(crawler.isAtFacing(new Point(1, 2), "Up"));
    }

    // boulder

    @Test
    void test27CanNotAdvanceToABoulder() {
        SurveyCrawler crawler = crawlerWith(new SimulatedSonar().boulderAt(new Point(1, 3)));

        assertThrowsWithDescription(crawler.boulderFoundErrorDescription(), () -> crawler.process("a"));

        assertTrue(crawler.isAtFacing(new Point(1, 2), "Up"));
    }

    @Test
    void test28CanNotRetreatToABoulder() {
        SurveyCrawler crawler = crawlerWith(new SimulatedSonar().boulderAt(new Point(1, 1)));

        assertThrowsWithDescription(crawler.boulderFoundErrorDescription(), () -> crawler.process("t"));

        assertTrue(crawler.isAtFacing(new Point(1, 2), "Up"));
    }

    @Test
    void test29CanNotTurnCounterClockwiseOnABoulder() {
        SurveyCrawler crawler = crawlerWith(new SimulatedSonar().boulderAt(new Point(1, 2)));

        assertThrowsWithDescription(crawler.boulderFoundErrorDescription(), () -> crawler.process("g"));

        assertTrue(crawler.isAtFacing(new Point(1, 2), "Up"));
    }

    @Test
    void test30CanNotTurnClockwiseOnABoulder() {
        SurveyCrawler crawler = crawlerWith(new SimulatedSonar().boulderAt(new Point(1, 2)));

        assertThrowsWithDescription(crawler.boulderFoundErrorDescription(), () -> crawler.process("h"));

        assertTrue(crawler.isAtFacing(new Point(1, 2), "Up"));
    }

    @Test
    void test31BoulderStopsARepetitionWhereItWasFound() {
        SurveyCrawler crawler = crawlerWith(new SimulatedSonar().boulderAt(new Point(1, 5)));

        assertThrowsWithDescription(crawler.boulderFoundErrorDescription(), () -> crawler.process("a3"));

        assertTrue(crawler.isAtFacing(new Point(1, 4), "Up"));
    }

    @Test
    void test32CanMoveAwayFromABoulderPosition() {
        SurveyCrawler crawler = crawlerWith(new SimulatedSonar().boulderAt(new Point(1, 2)));

        crawler.process("a");

        assertTrue(crawler.isAtFacing(new Point(1, 3), "Up"));
    }

    // silt

    @Test
    void test33AdvancingToSiltSlidesTheRandomDistance() {
        SurveyCrawler crawler = crawlerWith(new SimulatedSonar().siltAt(new Point(1, 3)), new FixedRandom(3));

        crawler.process("a");

        assertTrue(crawler.isAtFacing(new Point(1, 6), "Up"));
    }

    @Test
    void test34SlidingOnSiltIsAtLeastOneCell() {
        SurveyCrawler crawler = crawlerWith(new SimulatedSonar().siltAt(new Point(1, 3)), new FixedRandom(0));

        crawler.process("a");

        assertTrue(crawler.isAtFacing(new Point(1, 3), "Up"));
    }

    @Test
    void test35SlidingOnSiltIsAtMostTenCells() {
        SurveyCrawler crawler = crawlerWith(new SimulatedSonar().siltAt(new Point(1, 3)), new FixedRandom(9));

        crawler.process("a");

        assertTrue(crawler.isAtFacing(new Point(1, 12), "Up"));
    }

    @Test
    void test36SlidingOnSiltWithRealRandomEndsBetweenOneAndTenCells() {
        for (int i = 0; i < 200; i++) {
            SurveyCrawler crawler = crawlerWith(new SimulatedSonar().siltAt(new Point(1, 3)), new Random());

            crawler.process("a");

            assertTrue(isAtAnyOf(crawler, 3, 12));
        }
    }

    @Test
    void test37RetreatingToSiltSlidesInTheRetreatDirection() {
        SurveyCrawler crawler = crawlerWith(new SimulatedSonar().siltAt(new Point(1, 1)), new FixedRandom(2));

        crawler.process("t");

        assertTrue(crawler.isAtFacing(new Point(1, -1), "Up"));
    }

    @Test
    void test38SiltDoesNotAffectTurning() {
        SurveyCrawler crawler = crawlerWith(new SimulatedSonar().siltAt(new Point(1, 2)));

        crawler.process("hgg");

        assertTrue(crawler.isAtFacing(new Point(1, 2), "Left"));
    }

    // guarded run

    @Test
    void test39GuardedRunWithoutProblemsProcessesItsCommands() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        crawler.process("(aah)");

        assertTrue(crawler.isAtFacing(new Point(1, 4), "Right"));
    }

    @Test
    void test40EmptyGuardedRunDoesNothing() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        crawler.process("()");

        assertTrue(crawler.isAtFacing(new Point(1, 2), "Up"));
    }

    @Test
    void test41BoulderDuringGuardedRunReturnsToInitialPosition() {
        SurveyCrawler crawler = crawlerWith(new SimulatedSonar().boulderAt(new Point(1, 4)));

        assertThrowsWithDescription(crawler.boulderFoundErrorDescription(), () -> crawler.process("(aa)"));

        assertTrue(crawler.isAtFacing(new Point(1, 2), "Up"));
    }

    @Test
    void test42GuardedRunUndoesTurnsAndMovements() {
        SurveyCrawler crawler = crawlerWith(new SimulatedSonar().boulderAt(new Point(3, 4)));

        assertThrowsWithDescription(crawler.boulderFoundErrorDescription(), () -> crawler.process("(ahtgaha0)"));

        assertTrue(crawler.isAtFacing(new Point(1, 2), "Up"));
    }

    @Test
    void test43SiltDuringGuardedRunReturnsToInitialPosition() {
        SurveyCrawler crawler = crawlerWith(new SimulatedSonar().siltAt(new Point(2, 3)));

        assertThrowsWithDescription(crawler.siltFoundDuringGuardedRunErrorDescription(), () -> crawler.process("(aha)"));

        assertTrue(crawler.isAtFacing(new Point(1, 2), "Up"));
    }

    @Test
    void test44TurningOnSiltDuringGuardedRunIsAllowed() {
        SurveyCrawler crawler = crawlerWith(new SimulatedSonar().siltAt(new Point(1, 2)));

        crawler.process("(hg)");

        assertTrue(crawler.isAtFacing(new Point(1, 2), "Up"));
    }

    @Test
    void test45InvalidCommandDuringGuardedRunReturnsToInitialPosition() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        assertThrowsWithDescription(crawler.invalidCommandErrorDescription(), () -> crawler.process("(ahx)"));

        assertTrue(crawler.isAtFacing(new Point(1, 2), "Up"));
    }

    @Test
    void test46InvalidRepetitionDuringGuardedRunReturnsToInitialPosition() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        assertThrowsWithDescription(crawler.invalidRepetitionErrorDescription(), () -> crawler.process("(a33)"));

        assertTrue(crawler.isAtFacing(new Point(1, 2), "Up"));
    }

    @Test
    void test47GuardedRunOnlyUndoesItsOwnCommands() {
        SurveyCrawler crawler = crawlerWith(new SimulatedSonar().boulderAt(new Point(1, 6)));

        assertThrowsWithDescription(crawler.boulderFoundErrorDescription(), () -> crawler.process("aa(aa)"));

        assertTrue(crawler.isAtFacing(new Point(1, 4), "Up"));
    }

    @Test
    void test48ErrorOutsideGuardedRunDoesNotUndoPreviousGuardedRuns() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        assertThrowsWithDescription(crawler.invalidCommandErrorDescription(), () -> crawler.process("(aa)ax"));

        assertTrue(crawler.isAtFacing(new Point(1, 5), "Up"));
    }

    @Test
    void test49SeveralGuardedRunsCanBeProcessed() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        crawler.process("aha(aagt3)aa(ht)");

        assertTrue(crawler.isAtFacing(new Point(3, -1), "Right"));
    }

    @Test
    void test50ErrorInSecondGuardedRunOnlyUndoesTheSecondOne() {
        SurveyCrawler crawler = crawlerWith(new SimulatedSonar().boulderAt(new Point(1, 7)));

        assertThrowsWithDescription(crawler.boulderFoundErrorDescription(), () -> crawler.process("(aa)a(aa)"));

        assertTrue(crawler.isAtFacing(new Point(1, 5), "Up"));
    }

    @Test
    void test51CanNotNestGuardedRuns() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        assertThrowsWithDescription(crawler.nestedGuardedRunErrorDescription(), () -> crawler.process("aa(aa(ht)a)"));

        assertTrue(crawler.isAtFacing(new Point(1, 4), "Up"));
    }

    @Test
    void test52GuardedRunMustBeFinished() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        assertThrowsWithDescription(crawler.unfinishedGuardedRunErrorDescription(), () -> crawler.process("a(aa"));

        assertTrue(crawler.isAtFacing(new Point(1, 3), "Up"));
    }

    @Test
    void test53CanNotFinishAGuardedRunThatWasNotStarted() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        assertThrowsWithDescription(crawler.guardedRunNotStartedErrorDescription(), () -> crawler.process("a)"));

        assertTrue(crawler.isAtFacing(new Point(1, 3), "Up"));
    }

    @Test
    void test54GuardedRunCanNotBeFinishedTwice() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        assertThrowsWithDescription(crawler.guardedRunNotStartedErrorDescription(), () -> crawler.process("(a))"));

        assertTrue(crawler.isAtFacing(new Point(1, 3), "Up"));
    }

    @Test
    void test55GuardedRunDoesNotSpanSeveralProcessCalls() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        assertThrows(RuntimeException.class, () -> crawler.process("(a"));
        crawler.process("(a)");

        assertTrue(crawler.isAtFacing(new Point(1, 3), "Up"));
    }

    @Test
    void test56CrawlerKeepsWorkingAfterAFailedGuardedRun() {
        SurveyCrawler crawler = crawlerWith(new SimulatedSonar().boulderAt(new Point(1, 4)));

        assertThrows(RuntimeException.class, () -> crawler.process("(aa)"));
        crawler.process("h(a)");

        assertTrue(crawler.isAtFacing(new Point(2, 2), "Right"));
    }

    @Test
    void test57UndoingDoesNotSlideWhenReturningToSilt() {
        SurveyCrawler crawler = crawlerWith(new SimulatedSonar().siltAt(new Point(1, 2)).boulderAt(new Point(1, 4)), new FixedRandom(5));

        assertThrows(RuntimeException.class, () -> crawler.process("(aa)"));

        assertTrue(crawler.isAtFacing(new Point(1, 2), "Up"));
    }

    @Test
    void test58UndoingDoesNotFailWhenStartingOnABoulder() {
        SurveyCrawler crawler = crawlerWith(new SimulatedSonar().boulderAt(new Point(1, 2)).boulderAt(new Point(1, 4)));

        assertThrowsWithDescription(crawler.boulderFoundErrorDescription(), () -> crawler.process("(aa)"));

        assertTrue(crawler.isAtFacing(new Point(1, 2), "Up"));
    }

    @Test
    void test59SlidingOutsideGuardedRunIsNotUndoneByALaterGuardedRun() {
        SurveyCrawler crawler = crawlerWith(new SimulatedSonar().siltAt(new Point(1, 3)).boulderAt(new Point(1, 7)), new FixedRandom(2));

        assertThrowsWithDescription(crawler.boulderFoundErrorDescription(), () -> crawler.process("a(aa)"));

        assertTrue(crawler.isAtFacing(new Point(1, 5), "Up"));
    }

    // helpers

    private SurveyCrawler crawlerWith(Sonar aSonar) {
        return SurveyCrawler.atFacingWithSonar(new Point(1, 2), "Up", aSonar);
    }

    private SurveyCrawler crawlerWith(Sonar aSonar, Random aRandom) {
        return SurveyCrawler.atFacingWithSonarAndRandom(new Point(1, 2), "Up", aSonar, aRandom);
    }

    private void assertThrowsWithDescription(String anErrorDescription, Runnable aBlock) {
        RuntimeException anError = assertThrows(RuntimeException.class, aBlock::run);

        assertEquals(anErrorDescription, anError.getMessage());
    }

    private boolean isAtAnyOf(SurveyCrawler aCrawler, int fromY, int toY) {
        for (int y = fromY; y <= toY; y++) {
            if (aCrawler.isAtFacing(new Point(1, y), "Up")) {
                return true;
            }
        }
        return false;
    }
}
