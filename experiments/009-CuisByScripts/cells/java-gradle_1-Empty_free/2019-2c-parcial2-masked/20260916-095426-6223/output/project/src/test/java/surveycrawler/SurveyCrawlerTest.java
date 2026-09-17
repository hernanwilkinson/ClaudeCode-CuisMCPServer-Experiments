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

        crawler.process("t1");

        assertTrue(crawler.isAtFacing(new Point(1, -2), "Up"));
    }

    @Test
    void test19DigitAfterTurnsRepeatsThem() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        crawler.process("h0");

        assertTrue(crawler.isAtFacing(new Point(1, 2), "Left"));

        crawler.process("g1");

        assertTrue(crawler.isAtFacing(new Point(1, 2), "Left"));
    }

    @Test
    void test20NineIsTheBiggestRepetition() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(0, 0), "Right");

        crawler.process("a9");

        assertTrue(crawler.isAtFacing(new Point(12, 0), "Right"));
    }

    @Test
    void test21OnlyTheLastCommandIsRepeated() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        crawler.process("ha0");

        assertTrue(crawler.isAtFacing(new Point(4, 2), "Right"));
    }

    @Test
    void test22DigitWithoutPreviousCommandIsInvalid() {
        assertInvalidCommandLeavesCrawlerAt("3", new Point(1, 2));
    }

    @Test
    void test23RepetitionIsASingleDigit() {
        assertInvalidCommandLeavesCrawlerAt("a23", new Point(1, 7));
    }

    @Test
    void test24DigitAfterAnInvalidCommandIsNotProcessed() {
        assertInvalidCommandLeavesCrawlerAt("x3", new Point(1, 2));
    }

    @Test
    void test25DigitCanNotRepeatACommandOfAPreviousProcess() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");
        crawler.process("a");

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("3"));

        assertEquals(crawler.invalidCommandErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 3), "Up"));
    }

    @Test
    void test26DigitAfterClosingAGuardedRunIsInvalid() {
        assertInvalidCommandLeavesCrawlerAt("(a)3", new Point(1, 3));
    }

    // sonar - boulder

    @Test
    void test27CanNotAdvanceOntoABoulder() {
        SurveyCrawler crawler = crawlerAt12FacingUpWith(new SimulatedSonar().withBoulderAt(new Point(1, 3)));

        assertBoulderFoundLeavesCrawlerAtFacing(crawler, "a", new Point(1, 2), "Up");
    }

    @Test
    void test28CanNotRetreatOntoABoulder() {
        SurveyCrawler crawler = crawlerAt12FacingUpWith(new SimulatedSonar().withBoulderAt(new Point(1, 1)));

        assertBoulderFoundLeavesCrawlerAtFacing(crawler, "t", new Point(1, 2), "Up");
    }

    @Test
    void test29CanNotTurnCounterClockwiseOnABoulder() {
        SurveyCrawler crawler = crawlerAt12FacingUpWith(new SimulatedSonar().withBoulderAt(new Point(1, 2)));

        assertBoulderFoundLeavesCrawlerAtFacing(crawler, "g", new Point(1, 2), "Up");
    }

    @Test
    void test30CanNotTurnClockwiseOnABoulder() {
        SurveyCrawler crawler = crawlerAt12FacingUpWith(new SimulatedSonar().withBoulderAt(new Point(1, 2)));

        assertBoulderFoundLeavesCrawlerAtFacing(crawler, "h", new Point(1, 2), "Up");
    }

    @Test
    void test31CanMoveOffABoulderItIsOn() {
        SurveyCrawler crawler = crawlerAt12FacingUpWith(new SimulatedSonar().withBoulderAt(new Point(1, 2)));

        crawler.process("a");

        assertTrue(crawler.isAtFacing(new Point(1, 3), "Up"));
    }

    @Test
    void test32CommandsBeforeFindingABoulderOutsideAGuardedRunAreKept() {
        SurveyCrawler crawler = crawlerAt12FacingUpWith(new SimulatedSonar().withBoulderAt(new Point(1, 4)));

        assertBoulderFoundLeavesCrawlerAtFacing(crawler, "aaa", new Point(1, 3), "Up");
    }

    @Test
    void test33RepetitionStopsWhenFindingABoulder() {
        SurveyCrawler crawler = crawlerAt12FacingUpWith(new SimulatedSonar().withBoulderAt(new Point(1, 5)));

        assertBoulderFoundLeavesCrawlerAtFacing(crawler, "a5", new Point(1, 4), "Up");
    }

    // sonar - silt

    @Test
    void test34AdvancingOntoSiltSlidesAtLeastOneCell() {
        FixedRandom random = new FixedRandom(0);
        SurveyCrawler crawler = SurveyCrawler.atFacingUsing(new Point(1, 2), "Up", new SimulatedSonar().withSiltAt(new Point(1, 3)), random);

        crawler.process("a");

        assertTrue(crawler.isAtFacing(new Point(1, 3), "Up"));
        assertEquals(10, random.lastLimit());
    }

    @Test
    void test35AdvancingOntoSiltSlidesAtMostTenCells() {
        SurveyCrawler crawler = SurveyCrawler.atFacingUsing(new Point(1, 2), "Up", new SimulatedSonar().withSiltAt(new Point(1, 3)), new FixedRandom(9));

        crawler.process("a");

        assertTrue(crawler.isAtFacing(new Point(1, 12), "Up"));
    }

    @Test
    void test36RetreatingOntoSiltSlidesInTheRetreatingDirection() {
        SurveyCrawler crawler = SurveyCrawler.atFacingUsing(new Point(1, 2), "Right", new SimulatedSonar().withSiltAt(new Point(0, 2)), new FixedRandom(4));

        crawler.process("t");

        assertTrue(crawler.isAtFacing(new Point(-4, 2), "Right"));
    }

    @Test
    void test37SiltSlidingIsAlwaysBetweenOneAndTenCells() {
        Random random = new Random(42);
        for (int i = 0; i < 1000; i++) {
            SurveyCrawler crawler = SurveyCrawler.atFacingUsing(new Point(1, 2), "Up", new SimulatedSonar().withSiltAt(new Point(1, 3)), random);

            crawler.process("h");
            crawler.process("g");
            crawler.process("a");

            boolean isInRange = false;
            for (int y = 3; y <= 12; y++) {
                isInRange = isInRange || crawler.isAtFacing(new Point(1, y), "Up");
            }
            assertTrue(isInRange);
        }
    }

    @Test
    void test38SiltDoesNotAffectTurning() {
        SurveyCrawler crawler = crawlerAt12FacingUpWith(new SimulatedSonar().withSiltAt(new Point(1, 2)));

        crawler.process("hhg");

        assertTrue(crawler.isAtFacing(new Point(1, 2), "Right"));
    }

    // guarded run

    @Test
    void test39GuardedRunWithoutProblemsExecutesItsCommands() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        crawler.process("(aht)");

        assertTrue(crawler.isAtFacing(new Point(0, 3), "Right"));
    }

    @Test
    void test40EmptyGuardedRunDoesNothing() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        crawler.process("()");

        assertTrue(crawler.isAtFacing(new Point(1, 2), "Up"));
    }

    @Test
    void test41BoulderInGuardedRunUndoesMovements() {
        SurveyCrawler crawler = crawlerAt12FacingUpWith(new SimulatedSonar().withBoulderAt(new Point(1, 4)));

        assertBoulderFoundLeavesCrawlerAtFacing(crawler, "(aa)", new Point(1, 2), "Up");
    }

    @Test
    void test42BoulderInGuardedRunUndoesTurnsAndMovements() {
        SurveyCrawler crawler = crawlerAt12FacingUpWith(new SimulatedSonar().withBoulderAt(new Point(3, 2)));

        assertBoulderFoundLeavesCrawlerAtFacing(crawler, "(ahagtha)", new Point(1, 2), "Up");
    }

    @Test
    void test43GuardedRunUndoesOnlyItsOwnMovements() {
        SurveyCrawler crawler = crawlerAt12FacingUpWith(new SimulatedSonar().withBoulderAt(new Point(3, 3)));

        assertBoulderFoundLeavesCrawlerAtFacing(crawler, "ah(aa)", new Point(1, 3), "Right");
    }

    @Test
    void test44SeveralGuardedRunsCanBeProcessed() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(0, 0), "Up");

        crawler.process("aha(aagt3)aa(ht)");

        assertTrue(crawler.isAtFacing(new Point(2, -3), "Right"));
    }

    @Test
    void test45OnlyTheFailingGuardedRunIsUndone() {
        SurveyCrawler crawler = SurveyCrawler.atFacingUsing(new Point(0, 0), "Up", new SimulatedSonar().withBoulderAt(new Point(0, 4)), new Random());

        assertBoulderFoundLeavesCrawlerAtFacing(crawler, "(a)a(aa)", new Point(0, 2), "Up");
    }

    @Test
    void test46RepetitionInGuardedRunIsUndone() {
        SurveyCrawler crawler = crawlerAt12FacingUpWith(new SimulatedSonar().withBoulderAt(new Point(1, 7)));

        assertBoulderFoundLeavesCrawlerAtFacing(crawler, "(a9)", new Point(1, 2), "Up");
    }

    @Test
    void test47SiltInGuardedRunIsNotEnteredAndMovementsAreUndone() {
        SurveyCrawler crawler = SurveyCrawler.atFacingUsing(new Point(1, 2), "Up", new SimulatedSonar().withSiltAt(new Point(1, 4)), new FixedRandom(5));

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("(aa)"));

        assertEquals(crawler.siltFoundInGuardedRunErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 2), "Up"));
    }

    @Test
    void test48UndoingDoesNotSlideWhenStartingOnSilt() {
        SurveyCrawler crawler = SurveyCrawler.atFacingUsing(new Point(1, 2), "Up",
            new SimulatedSonar().withSiltAt(new Point(1, 2)).withBoulderAt(new Point(1, 4)), new FixedRandom(5));

        assertBoulderFoundLeavesCrawlerAtFacing(crawler, "(aa)", new Point(1, 2), "Up");
    }

    @Test
    void test49InvalidCommandInGuardedRunUndoesMovements() {
        assertInvalidCommandLeavesCrawlerAt("a(aax)", new Point(1, 3));
    }

    @Test
    void test50InvalidDigitsInGuardedRunUndoMovements() {
        assertInvalidCommandLeavesCrawlerAt("a(3)", new Point(1, 3));
        assertInvalidCommandLeavesCrawlerAt("a(a33)", new Point(1, 3));
    }

    @Test
    void test51GuardedRunCanNotBeNested() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("aa(aa(ht)a)"));

        assertEquals(crawler.guardedRunAlreadyStartedErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 4), "Up"));
    }

    @Test
    void test52GuardedRunMustBeFinished() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("a(aa"));

        assertEquals(crawler.guardedRunNotFinishedErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 3), "Up"));
    }

    @Test
    void test53GuardedRunCanNotBeFinishedWithoutBeingStarted() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("a)a"));

        assertEquals(crawler.guardedRunNotStartedErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 3), "Up"));
    }

    @Test
    void test54GuardedRunDoesNotContinueIntoTheNextProcess() {
        SurveyCrawler crawler = crawlerAt12FacingUpWith(new SimulatedSonar().withBoulderAt(new Point(1, 4)));
        assertThrows(RuntimeException.class, () -> crawler.process("(a"));

        assertBoulderFoundLeavesCrawlerAtFacing(crawler, "aaa", new Point(1, 3), "Up");
    }

    @Test
    void test55FailedGuardedRunDoesNotAffectTheNextProcess() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");
        assertThrows(RuntimeException.class, () -> crawler.process("(ax)"));

        crawler.process("(a)");

        assertTrue(crawler.isAtFacing(new Point(1, 3), "Up"));
    }

    // helpers

    private SurveyCrawler crawlerAt12FacingUpWith(Sonar aSonar) {
        return SurveyCrawler.atFacingUsing(new Point(1, 2), "Up", aSonar, new Random());
    }

    private void assertBoulderFoundLeavesCrawlerAtFacing(SurveyCrawler crawler, String aSequenceOfCommands, Point aPosition, String aFacingName) {
        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process(aSequenceOfCommands));

        assertEquals(crawler.boulderFoundErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(aPosition, aFacingName));
    }

    private void assertInvalidCommandLeavesCrawlerAt(String aSequenceOfCommands, Point aPosition) {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process(aSequenceOfCommands));

        assertEquals(crawler.invalidCommandErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(aPosition, "Up"));
    }
}
