package surveycrawler;

import org.junit.jupiter.api.Test;

import java.util.Random;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertThrows;
import static org.junit.jupiter.api.Assertions.assertTrue;

class SurveyCrawlerTest {

    private final SonarSimulator sonar = new SonarSimulator();

    @Test
    void test01EmptyCommandStringDoesNothing() {
        SurveyCrawler crawler = crawlerAtFacing(new Point(1, 2), "Up");

        crawler.process("");

        assertTrue(crawler.isAtFacing(new Point(1, 2), "Up"));
    }

    @Test
    void test02aWhenFacingUpIncrementsY() {
        SurveyCrawler crawler = crawlerAtFacing(new Point(1, 2), "Up");

        crawler.process("a");

        assertTrue(crawler.isAtFacing(new Point(1, 3), "Up"));
    }

    @Test
    void test03tWhenFacingUpDecrementsY() {
        SurveyCrawler crawler = crawlerAtFacing(new Point(1, 2), "Up");

        crawler.process("t");

        assertTrue(crawler.isAtFacing(new Point(1, 1), "Up"));
    }

    @Test
    void test04hWhenFacingUpMakesCrawlerFaceRight() {
        SurveyCrawler crawler = crawlerAtFacing(new Point(1, 2), "Up");

        crawler.process("h");

        assertTrue(crawler.isAtFacing(new Point(1, 2), "Right"));
    }

    @Test
    void test05gWhenFacingUpMakesCrawlerFaceLeft() {
        SurveyCrawler crawler = crawlerAtFacing(new Point(1, 2), "Up");

        crawler.process("g");

        assertTrue(crawler.isAtFacing(new Point(1, 2), "Left"));
    }

    @Test
    void test06InvalidCommandsAreNotProcessed() {
        SurveyCrawler crawler = crawlerAtFacing(new Point(1, 2), "Up");

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("x"));

        assertEquals(crawler.invalidCommandErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 2), "Up"));
    }

    @Test
    void test07MoreThanOneCommandAreProcessedCorrectly() {
        SurveyCrawler crawler = crawlerAtFacing(new Point(1, 2), "Up");

        crawler.process("aa");

        assertTrue(crawler.isAtFacing(new Point(1, 4), "Up"));
    }

    @Test
    void test08aWhenFacingRightIncrementsX() {
        SurveyCrawler crawler = crawlerAtFacing(new Point(1, 2), "Right");

        crawler.process("a");

        assertTrue(crawler.isAtFacing(new Point(2, 2), "Right"));
    }

    @Test
    void test09tWhenFacingRightDecrementsX() {
        SurveyCrawler crawler = crawlerAtFacing(new Point(1, 2), "Right");

        crawler.process("t");

        assertTrue(crawler.isAtFacing(new Point(0, 2), "Right"));
    }

    @Test
    void test10hWhenFacingRightMakesCrawlerFaceDown() {
        SurveyCrawler crawler = crawlerAtFacing(new Point(1, 2), "Right");

        crawler.process("h");

        assertTrue(crawler.isAtFacing(new Point(1, 2), "Down"));
    }

    @Test
    void test11gWhenFacingRightMakesCrawlerFaceUp() {
        SurveyCrawler crawler = crawlerAtFacing(new Point(1, 2), "Right");

        crawler.process("g");

        assertTrue(crawler.isAtFacing(new Point(1, 2), "Up"));
    }

    @Test
    void test12athAreProcessedCorrectlyWhenFacingDown() {
        SurveyCrawler crawler = crawlerAtFacing(new Point(1, 2), "Down");

        crawler.process("aath");

        assertTrue(crawler.isAtFacing(new Point(1, 1), "Left"));
    }

    @Test
    void test13gWhenFacingDownMakesCrawlerFaceRight() {
        SurveyCrawler crawler = crawlerAtFacing(new Point(1, 2), "Down");

        crawler.process("g");

        assertTrue(crawler.isAtFacing(new Point(1, 2), "Right"));
    }

    @Test
    void test14athAreProcessedCorrectlyWhenFacingLeft() {
        SurveyCrawler crawler = crawlerAtFacing(new Point(1, 2), "Left");

        crawler.process("aath");

        assertTrue(crawler.isAtFacing(new Point(0, 2), "Up"));
    }

    @Test
    void test15gWhenFacingLeftMakesCrawlerFaceDown() {
        SurveyCrawler crawler = crawlerAtFacing(new Point(1, 2), "Left");

        crawler.process("g");

        assertTrue(crawler.isAtFacing(new Point(1, 2), "Down"));
    }

    @Test
    void test16CanNotCreateACrawlerWithAnInvalidFacing() {
        RuntimeException anError = assertThrows(RuntimeException.class, () -> SurveyCrawler.atFacingUsing(new Point(1, 2), "X", new SonarSimulator()));

        assertEquals(SurveyCrawler.invalidFacingErrorDescription(), anError.getMessage());
    }

    // repetition

    @Test
    void test17DigitAfterAdvanceRepeatsItDigitPlusTwoTimes() {
        SurveyCrawler crawler = crawlerAtFacing(new Point(1, 2), "Up");

        crawler.process("a0");

        assertTrue(crawler.isAtFacing(new Point(1, 5), "Up"));
    }

    @Test
    void test18DigitAfterRetreatRepeatsIt() {
        SurveyCrawler crawler = crawlerAtFacing(new Point(1, 2), "Up");

        crawler.process("t9");

        assertTrue(crawler.isAtFacing(new Point(1, -10), "Up"));
    }

    @Test
    void test19DigitAfterTurnClockwiseRepeatsIt() {
        SurveyCrawler crawler = crawlerAtFacing(new Point(1, 2), "Up");

        crawler.process("h0");

        assertTrue(crawler.isAtFacing(new Point(1, 2), "Left"));
    }

    @Test
    void test20DigitAfterTurnCounterClockwiseRepeatsIt() {
        SurveyCrawler crawler = crawlerAtFacing(new Point(1, 2), "Up");

        crawler.process("g0");

        assertTrue(crawler.isAtFacing(new Point(1, 2), "Right"));
    }

    @Test
    void test21RepetitionOnlyRepeatsTheLastCommand() {
        SurveyCrawler crawler = crawlerAtFacing(new Point(1, 2), "Up");

        crawler.process("ha0");

        assertTrue(crawler.isAtFacing(new Point(4, 2), "Right"));
    }

    @Test
    void test22CanNotStartWithARepetition() {
        SurveyCrawler crawler = crawlerAtFacing(new Point(1, 2), "Up");

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("3"));

        assertEquals(crawler.invalidRepetitionErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 2), "Up"));
    }

    @Test
    void test23RepetitionIsASingleDigit() {
        SurveyCrawler crawler = crawlerAtFacing(new Point(1, 2), "Up");

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("a00"));

        assertEquals(crawler.invalidRepetitionErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 5), "Up"));
    }

    @Test
    void test24RepetitionCanNotFollowAnInvalidCommand() {
        SurveyCrawler crawler = crawlerAtFacing(new Point(1, 2), "Up");

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("x0"));

        assertEquals(crawler.invalidCommandErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 2), "Up"));
    }

    @Test
    void test25RepetitionCanNotFollowAGuardedRunDelimiter() {
        SurveyCrawler crawler = crawlerAtFacing(new Point(1, 2), "Up");

        RuntimeException startError = assertThrows(RuntimeException.class, () -> crawler.process("a(0a)"));
        assertEquals(crawler.invalidRepetitionErrorDescription(), startError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 3), "Up"));

        RuntimeException endError = assertThrows(RuntimeException.class, () -> crawler.process("(a)0"));
        assertEquals(crawler.invalidRepetitionErrorDescription(), endError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 4), "Up"));
    }

    @Test
    void test26RepetitionIsNotRememberedBetweenProcesses() {
        SurveyCrawler crawler = crawlerAtFacing(new Point(1, 2), "Up");
        crawler.process("a");

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("0"));

        assertEquals(crawler.invalidRepetitionErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 3), "Up"));
    }

    // boulder

    @Test
    void test27CanNotAdvanceToABoulder() {
        sonar.boulderAt(new Point(1, 3));
        SurveyCrawler crawler = crawlerAtFacing(new Point(1, 2), "Up");

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("a"));

        assertEquals(crawler.boulderFoundErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 2), "Up"));
    }

    @Test
    void test28CanNotRetreatToABoulder() {
        sonar.boulderAt(new Point(0, 2));
        SurveyCrawler crawler = crawlerAtFacing(new Point(1, 2), "Right");

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("t"));

        assertEquals(crawler.boulderFoundErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 2), "Right"));
    }

    @Test
    void test29CanNotTurnCounterClockwiseOnABoulder() {
        sonar.boulderAt(new Point(1, 2));
        SurveyCrawler crawler = crawlerAtFacing(new Point(1, 2), "Up");

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("g"));

        assertEquals(crawler.boulderFoundErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 2), "Up"));
    }

    @Test
    void test30CanNotTurnClockwiseOnABoulder() {
        sonar.boulderAt(new Point(1, 2));
        SurveyCrawler crawler = crawlerAtFacing(new Point(1, 2), "Up");

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("h"));

        assertEquals(crawler.boulderFoundErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 2), "Up"));
    }

    @Test
    void test31BoulderNotInTheWayDoesNotAffectMovement() {
        sonar.boulderAt(new Point(2, 3));
        SurveyCrawler crawler = crawlerAtFacing(new Point(1, 2), "Up");

        crawler.process("ah");

        assertTrue(crawler.isAtFacing(new Point(1, 3), "Right"));
    }

    @Test
    void test32RepetitionStopsAtABoulderKeepingPreviousMovements() {
        sonar.boulderAt(new Point(1, 5));
        SurveyCrawler crawler = crawlerAtFacing(new Point(1, 2), "Up");

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("a3"));

        assertEquals(crawler.boulderFoundErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 4), "Up"));
    }

    // silt

    @Test
    void test33AdvancingToSiltSlidesInTheAdvancingDirection() {
        FixedRandom random = new FixedRandom(3);
        sonar.siltAt(new Point(1, 3), random);
        SurveyCrawler crawler = crawlerAtFacing(new Point(1, 2), "Up");

        crawler.process("a");

        assertTrue(crawler.isAtFacing(new Point(1, 6), "Up"));
    }

    @Test
    void test34RetreatingToSiltSlidesInTheRetreatingDirection() {
        sonar.siltAt(new Point(0, 2), new FixedRandom(1));
        SurveyCrawler crawler = crawlerAtFacing(new Point(1, 2), "Right");

        crawler.process("t");

        assertTrue(crawler.isAtFacing(new Point(-1, 2), "Right"));
    }

    @Test
    void test35SlidingOnSiltIsAtLeastOneCell() {
        sonar.siltAt(new Point(1, 3), new FixedRandom(0));
        SurveyCrawler crawler = crawlerAtFacing(new Point(1, 2), "Up");

        crawler.process("a");

        assertTrue(crawler.isAtFacing(new Point(1, 3), "Up"));
    }

    @Test
    void test36SlidingOnSiltIsAtMostTenCells() {
        FixedRandom random = new FixedRandom(9);
        sonar.siltAt(new Point(1, 3), random);
        SurveyCrawler crawler = crawlerAtFacing(new Point(1, 2), "Up");

        crawler.process("a");

        assertEquals(10, random.lastLimit());
        assertTrue(crawler.isAtFacing(new Point(1, 12), "Up"));
    }

    @Test
    void test37SlidingOnSiltWithRealRandomnessStaysWithinTheLimit() {
        sonar.siltAt(new Point(1, 3), new Random());

        for (int i = 0; i < 100; i++) {
            SurveyCrawler crawler = crawlerAtFacing(new Point(1, 2), "Up");

            crawler.process("a");

            assertTrue(isAtAnyOfFacingUp(crawler, 3, 12));
        }
    }

    @Test
    void test38SiltDoesNotAffectTurning() {
        sonar.siltAt(new Point(1, 2), new FixedRandom(5));
        SurveyCrawler crawler = crawlerAtFacing(new Point(1, 2), "Up");

        crawler.process("hgg");

        assertTrue(crawler.isAtFacing(new Point(1, 2), "Left"));
    }

    // guarded run

    @Test
    void test39SuccessfulGuardedRunKeepsItsMovements() {
        SurveyCrawler crawler = crawlerAtFacing(new Point(1, 2), "Up");

        crawler.process("(aah)");

        assertTrue(crawler.isAtFacing(new Point(1, 4), "Right"));
    }

    @Test
    void test40EmptyGuardedRunDoesNothing() {
        SurveyCrawler crawler = crawlerAtFacing(new Point(1, 2), "Up");

        crawler.process("()");

        assertTrue(crawler.isAtFacing(new Point(1, 2), "Up"));
    }

    @Test
    void test41BoulderInGuardedRunUndoesItsMovements() {
        sonar.boulderAt(new Point(1, 4));
        SurveyCrawler crawler = crawlerAtFacing(new Point(1, 2), "Up");

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("(aa)"));

        assertEquals(crawler.boulderFoundErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 2), "Up"));
    }

    @Test
    void test42GuardedRunUndoesTurnsAndRetreats() {
        sonar.boulderAt(new Point(4, 1));
        SurveyCrawler crawler = crawlerAtFacing(new Point(1, 2), "Up");

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("(tha1gtgga)"));

        assertEquals(crawler.boulderFoundErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 2), "Up"));
    }

    @Test
    void test43GuardedRunOnlyUndoesMovementsInsideIt() {
        sonar.boulderAt(new Point(2, 4));
        SurveyCrawler crawler = crawlerAtFacing(new Point(1, 2), "Up");

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("aa(ha)"));

        assertEquals(crawler.boulderFoundErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 4), "Up"));
    }

    @Test
    void test44SiltInGuardedRunIsAnErrorAndUndoesTheSlide() {
        sonar.siltAt(new Point(1, 4), new FixedRandom(7));
        SurveyCrawler crawler = crawlerAtFacing(new Point(1, 2), "Up");

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("(aa)"));

        assertEquals(crawler.siltFoundDuringGuardedRunErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 2), "Up"));
    }

    @Test
    void test45InvalidCommandInGuardedRunUndoesItsMovements() {
        SurveyCrawler crawler = crawlerAtFacing(new Point(1, 2), "Up");

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("(ahx)"));

        assertEquals(crawler.invalidCommandErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 2), "Up"));
    }

    @Test
    void test46InvalidRepetitionInGuardedRunUndoesItsMovements() {
        SurveyCrawler crawler = crawlerAtFacing(new Point(1, 2), "Up");

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("(a00)"));

        assertEquals(crawler.invalidRepetitionErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 2), "Up"));
    }

    @Test
    void test47SeveralGuardedRunsCanBeProcessed() {
        SurveyCrawler crawler = crawlerAtFacing(new Point(1, 2), "Up");

        crawler.process("aha(aagt3)aa(ht)");

        assertTrue(crawler.isAtFacing(new Point(3, -1), "Right"));
    }

    @Test
    void test48FailingGuardedRunOnlyUndoesItself() {
        sonar.boulderAt(new Point(3, 2));
        SurveyCrawler crawler = crawlerAtFacing(new Point(1, 2), "Up");

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("(h)(aa)"));

        assertEquals(crawler.boulderFoundErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 2), "Right"));
    }

    @Test
    void test49GuardedRunsCanNotBeNested() {
        SurveyCrawler crawler = crawlerAtFacing(new Point(1, 2), "Up");

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("aa(aa(ht)a)"));

        assertEquals(crawler.guardedRunAlreadyStartedErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 4), "Up"));
    }

    @Test
    void test50GuardedRunMustBeFinished() {
        SurveyCrawler crawler = crawlerAtFacing(new Point(1, 2), "Up");

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("a(aa"));

        assertEquals(crawler.guardedRunNotFinishedErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 3), "Up"));
    }

    @Test
    void test51CanNotFinishAGuardedRunThatWasNotStarted() {
        SurveyCrawler crawler = crawlerAtFacing(new Point(1, 2), "Up");

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("a)a"));

        assertEquals(crawler.guardedRunNotStartedErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 3), "Up"));
    }

    @Test
    void test52GuardedRunDoesNotContinueAfterAFailedProcess() {
        SurveyCrawler crawler = crawlerAtFacing(new Point(1, 2), "Up");
        assertThrows(RuntimeException.class, () -> crawler.process("(a"));
        sonar.boulderAt(new Point(1, 5));

        assertThrows(RuntimeException.class, () -> crawler.process("aaa"));

        assertTrue(crawler.isAtFacing(new Point(1, 4), "Up"));
    }

    @Test
    void test53GuardedRunDoesNotContinueAfterAnUnfinishedProcess() {
        SurveyCrawler crawler = crawlerAtFacing(new Point(1, 2), "Up");
        assertThrows(RuntimeException.class, () -> crawler.process("(a"));

        crawler.process("(a)");

        assertTrue(crawler.isAtFacing(new Point(1, 3), "Up"));
    }

    private SurveyCrawler crawlerAtFacing(Point aPosition, String aFacingName) {
        return SurveyCrawler.atFacingUsing(aPosition, aFacingName, sonar);
    }

    private boolean isAtAnyOfFacingUp(SurveyCrawler aCrawler, int fromY, int toY) {
        for (int y = fromY; y <= toY; y++) {
            if (aCrawler.isAtFacing(new Point(1, y), "Up")) {
                return true;
            }
        }
        return false;
    }
}
