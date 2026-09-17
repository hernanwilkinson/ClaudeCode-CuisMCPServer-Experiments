package surveycrawler;

import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.function.Executable;

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
    void test17DigitAfterAdvanceRepeatsItTwoTimesMoreThanTheDigit() {
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
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(0, 0), "Right");

        crawler.process("a9");

        assertTrue(crawler.isAtFacing(new Point(12, 0), "Right"));
    }

    @Test
    void test22RepetitionOnlyRepeatsTheLastCommand() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(0, 0), "Up");

        crawler.process("ha0");

        assertTrue(crawler.isAtFacing(new Point(3, 0), "Right"));
    }

    @Test
    void test23CanNotRepeatWithoutAPreviousCommand() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        assertFailsWith(() -> crawler.process("0"), crawler.invalidRepetitionErrorDescription());

        assertTrue(crawler.isAtFacing(new Point(1, 2), "Up"));
    }

    @Test
    void test24RepetitionIsASingleDigit() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        assertFailsWith(() -> crawler.process("a00"), crawler.invalidRepetitionErrorDescription());

        assertTrue(crawler.isAtFacing(new Point(1, 5), "Up"));
    }

    @Test
    void test25CanNotRepeatGuardedRunCommands() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        assertFailsWith(() -> crawler.process("(0)"), crawler.invalidRepetitionErrorDescription());
        assertFailsWith(() -> crawler.process("()0"), crawler.invalidRepetitionErrorDescription());

        assertTrue(crawler.isAtFacing(new Point(1, 2), "Up"));
    }

    @Test
    void test26CanNotRepeatAfterAnotherSequenceOfCommands() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        crawler.process("a");

        assertFailsWith(() -> crawler.process("0"), crawler.invalidRepetitionErrorDescription());
        assertTrue(crawler.isAtFacing(new Point(1, 3), "Up"));
    }

    // boulder

    @Test
    void test27CanNotAdvanceToABoulder() {
        SurveyCrawler crawler = crawlerAtFacingUpWith(new SonarSimulator().withBoulderAt(new Point(1, 3)));

        assertFailsWith(() -> crawler.process("a"), crawler.boulderFoundErrorDescription());

        assertTrue(crawler.isAtFacing(new Point(1, 2), "Up"));
    }

    @Test
    void test28CanNotRetreatToABoulder() {
        SurveyCrawler crawler = crawlerAtFacingUpWith(new SonarSimulator().withBoulderAt(new Point(1, 1)));

        assertFailsWith(() -> crawler.process("t"), crawler.boulderFoundErrorDescription());

        assertTrue(crawler.isAtFacing(new Point(1, 2), "Up"));
    }

    @Test
    void test29CanNotTurnCounterClockwiseOnABoulder() {
        SurveyCrawler crawler = crawlerAtFacingUpWith(new SonarSimulator().withBoulderAt(new Point(1, 2)));

        assertFailsWith(() -> crawler.process("g"), crawler.boulderFoundErrorDescription());

        assertTrue(crawler.isAtFacing(new Point(1, 2), "Up"));
    }

    @Test
    void test30CanNotTurnClockwiseOnABoulder() {
        SurveyCrawler crawler = crawlerAtFacingUpWith(new SonarSimulator().withBoulderAt(new Point(1, 2)));

        assertFailsWith(() -> crawler.process("h"), crawler.boulderFoundErrorDescription());

        assertTrue(crawler.isAtFacing(new Point(1, 2), "Up"));
    }

    @Test
    void test31OutsideAGuardedRunMovementsBeforeTheBoulderAreKept() {
        SurveyCrawler crawler = crawlerAtFacingUpWith(new SonarSimulator().withBoulderAt(new Point(1, 5)));

        assertFailsWith(() -> crawler.process("a9"), crawler.boulderFoundErrorDescription());

        assertTrue(crawler.isAtFacing(new Point(1, 4), "Up"));
    }

    @Test
    void test32BoulderInAnotherPositionDoesNotAffectMovement() {
        SurveyCrawler crawler = crawlerAtFacingUpWith(new SonarSimulator().withBoulderAt(new Point(2, 3)));

        crawler.process("ag");

        assertTrue(crawler.isAtFacing(new Point(1, 3), "Left"));
    }

    // silt

    @Test
    void test33AdvancingToSiltSlidesAtLeastOneCell() {
        SurveyCrawler crawler = crawlerAtFacingUpWith(new SonarSimulator().withSiltAt(new Point(1, 3)), new FixedRandom(0));

        crawler.process("a");

        assertTrue(crawler.isAtFacing(new Point(1, 3), "Up"));
    }

    @Test
    void test34AdvancingToSiltSlidesAtMostTenCells() {
        SurveyCrawler crawler = crawlerAtFacingUpWith(new SonarSimulator().withSiltAt(new Point(1, 3)), new FixedRandom(9));

        crawler.process("a");

        assertTrue(crawler.isAtFacing(new Point(1, 12), "Up"));
    }

    @Test
    void test35RetreatingToSiltSlidesInTheRetreatDirection() {
        SurveyCrawler crawler = crawlerAtFacingUpWith(new SonarSimulator().withSiltAt(new Point(1, 1)), new FixedRandom(4));

        crawler.process("t");

        assertTrue(crawler.isAtFacing(new Point(1, -3), "Up"));
    }

    @Test
    void test36SlidingOnSiltIsRandomBetweenOneAndTenCells() {
        Random random = new Random();
        for (int i = 0; i < 200; i++) {
            SurveyCrawler crawler = crawlerAtFacingUpWith(new SonarSimulator().withSiltAt(new Point(1, 3)), random);

            crawler.process("a");

            assertTrue(isAtSomeYBetween(crawler, 3, 12));
        }
    }

    @Test
    void test37SiltDoesNotAffectTurning() {
        SurveyCrawler crawler = crawlerAtFacingUpWith(new SonarSimulator().withSiltAt(new Point(1, 2)));

        crawler.process("hgg");

        assertTrue(crawler.isAtFacing(new Point(1, 2), "Left"));
    }

    // guarded run

    @Test
    void test38GuardedRunWithoutProblemsMovesTheCrawler() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        crawler.process("(aah)");

        assertTrue(crawler.isAtFacing(new Point(1, 4), "Right"));
    }

    @Test
    void test39EmptyGuardedRunDoesNothing() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        crawler.process("()");

        assertTrue(crawler.isAtFacing(new Point(1, 2), "Up"));
    }

    @Test
    void test40BoulderInAGuardedRunUndoesItsMovements() {
        SurveyCrawler crawler = crawlerAtFacingUpWith(new SonarSimulator().withBoulderAt(new Point(1, 4)));

        assertFailsWith(() -> crawler.process("(aa)"), crawler.boulderFoundErrorDescription());

        assertTrue(crawler.isAtFacing(new Point(1, 2), "Up"));
    }

    @Test
    void test41UndoingRestoresTheFacingToo() {
        SurveyCrawler crawler = crawlerAtFacingUpWith(new SonarSimulator().withBoulderAt(new Point(0, 1)));

        assertFailsWith(() -> crawler.process("(ahtgtg0ha)"), crawler.boulderFoundErrorDescription());

        assertTrue(crawler.isAtFacing(new Point(1, 2), "Up"));
    }

    @Test
    void test42SiltInAGuardedRunUndoesItsMovements() {
        SurveyCrawler crawler = crawlerAtFacingUpWith(new SonarSimulator().withSiltAt(new Point(2, 3)), new FixedRandom(5));

        assertFailsWith(() -> crawler.process("(aha)"), crawler.siltFoundDuringGuardedRunErrorDescription());

        assertTrue(crawler.isAtFacing(new Point(1, 2), "Up"));
    }

    @Test
    void test43InvalidCommandInAGuardedRunUndoesItsMovements() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        assertFailsWith(() -> crawler.process("(a1hx)"), crawler.invalidCommandErrorDescription());

        assertTrue(crawler.isAtFacing(new Point(1, 2), "Up"));
    }

    @Test
    void test44InvalidRepetitionInAGuardedRunUndoesItsMovements() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        assertFailsWith(() -> crawler.process("(ah11)"), crawler.invalidRepetitionErrorDescription());

        assertTrue(crawler.isAtFacing(new Point(1, 2), "Up"));
    }

    @Test
    void test45GuardedRunReturnsToWhereItStartedNotToWhereTheSequenceStarted() {
        SurveyCrawler crawler = crawlerAtFacingUpWith(new SonarSimulator().withBoulderAt(new Point(3, 4)));

        assertFailsWith(() -> crawler.process("aah(aa)"), crawler.boulderFoundErrorDescription());

        assertTrue(crawler.isAtFacing(new Point(1, 4), "Right"));
    }

    @Test
    void test46SeveralGuardedRunsCanBeProcessed() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(0, 0), "Up");

        crawler.process("aha(aagt3)aa(ht)");

        assertTrue(crawler.isAtFacing(new Point(2, -3), "Right"));
    }

    @Test
    void test47OnlyTheFailingGuardedRunIsUndone() {
        SurveyCrawler crawler = crawlerAtFacingUpWith(new SonarSimulator().withBoulderAt(new Point(4, 4)));

        assertFailsWith(() -> crawler.process("(aa)h(aa0)"), crawler.boulderFoundErrorDescription());

        assertTrue(crawler.isAtFacing(new Point(1, 4), "Right"));
    }

    @Test
    void test48CanNotStartAGuardedRunInsideAnotherOne() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        assertFailsWith(() -> crawler.process("aa(aa(ht)a)"), crawler.nestedGuardedRunErrorDescription());

        assertTrue(crawler.isAtFacing(new Point(1, 4), "Up"));
    }

    @Test
    void test49GuardedRunMustBeFinished() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        assertFailsWith(() -> crawler.process("a(aa"), crawler.unfinishedGuardedRunErrorDescription());

        assertTrue(crawler.isAtFacing(new Point(1, 3), "Up"));
    }

    @Test
    void test50CanNotFinishAGuardedRunThatWasNotStarted() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        assertFailsWith(() -> crawler.process("a)"), crawler.guardedRunNotStartedErrorDescription());

        assertTrue(crawler.isAtFacing(new Point(1, 3), "Up"));
    }

    @Test
    void test51GuardedRunDoesNotContinueInTheNextSequenceOfCommands() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");
        assertFailsWith(() -> crawler.process("(a"), crawler.unfinishedGuardedRunErrorDescription());

        assertFailsWith(() -> crawler.process("a)"), crawler.guardedRunNotStartedErrorDescription());

        assertTrue(crawler.isAtFacing(new Point(1, 3), "Up"));
    }

    @Test
    void test52MovementsOfAFailedSequenceAreNotUndoneInTheNextOne() {
        SurveyCrawler crawler = crawlerAtFacingUpWith(new SonarSimulator().withBoulderAt(new Point(1, 4)));
        assertFailsWith(() -> crawler.process("(h)ga(a)"), crawler.boulderFoundErrorDescription());

        assertFailsWith(() -> crawler.process("(hx)"), crawler.invalidCommandErrorDescription());

        assertTrue(crawler.isAtFacing(new Point(1, 3), "Up"));
    }

    @Test
    void test53UndoingASlideDoesNotDependOnTheGroundOnTheWayBack() {
        SurveyCrawler crawler = crawlerAtFacingUpWith(
            new SonarSimulator().withBoulderAt(new Point(1, 1)).withSiltAt(new Point(1, 3)), new FixedRandom(2));

        assertFailsWith(() -> crawler.process("(a)"), crawler.siltFoundDuringGuardedRunErrorDescription());

        assertTrue(crawler.isAtFacing(new Point(1, 2), "Up"));
    }

    // helpers

    private SurveyCrawler crawlerAtFacingUpWith(Sonar aSonar) {
        return crawlerAtFacingUpWith(aSonar, new FixedRandom(0));
    }

    private SurveyCrawler crawlerAtFacingUpWith(Sonar aSonar, Random aRandom) {
        return SurveyCrawler.atFacingSensingWith(new Point(1, 2), "Up", aSonar, aRandom);
    }

    private void assertFailsWith(Executable aClosure, String anErrorDescription) {
        RuntimeException anError = assertThrows(RuntimeException.class, aClosure);
        assertEquals(anErrorDescription, anError.getMessage());
    }

    private boolean isAtSomeYBetween(SurveyCrawler aCrawler, int aMinimumY, int aMaximumY) {
        for (int y = aMinimumY; y <= aMaximumY; y++) {
            if (aCrawler.isAtFacing(new Point(1, y), "Up")) {
                return true;
            }
        }
        return false;
    }
}
