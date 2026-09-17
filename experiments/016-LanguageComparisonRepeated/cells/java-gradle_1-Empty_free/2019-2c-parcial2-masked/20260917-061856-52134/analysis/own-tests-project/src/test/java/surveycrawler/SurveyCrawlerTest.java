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

    // repeated commands

    @Test
    void test17aDigitRepeatsTheLastCommandTheDigitPlusTwoTimes() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        crawler.process("a0");

        assertTrue(crawler.isAtFacing(new Point(1, 5), "Up"));
    }

    @Test
    void test18NineIsTheBiggestRepetition() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        crawler.process("a9");

        assertTrue(crawler.isAtFacing(new Point(1, 14), "Up"));
    }

    @Test
    void test19RetreatCanBeRepeated() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        crawler.process("t1");

        assertTrue(crawler.isAtFacing(new Point(1, -2), "Up"));
    }

    @Test
    void test20TurnsCanBeRepeated() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        crawler.process("h1");
        assertTrue(crawler.isAtFacing(new Point(1, 2), "Up"));

        crawler.process("g0");
        assertTrue(crawler.isAtFacing(new Point(1, 2), "Right"));
    }

    @Test
    void test21OnlyTheCommandJustBeforeTheDigitIsRepeated() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        crawler.process("ha0");

        assertTrue(crawler.isAtFacing(new Point(4, 2), "Right"));
    }

    @Test
    void test22ADigitCanNotStartTheSequence() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("3"));

        assertEquals(crawler.invalidCommandErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 2), "Up"));
    }

    @Test
    void test23RepetitionIsASingleDigit() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("a00"));

        assertEquals(crawler.invalidCommandErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 5), "Up"));
    }

    @Test
    void test24GuardedRunDelimitersCanNotBeRepeated() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("(a)0"));

        assertEquals(crawler.invalidCommandErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 3), "Up"));
    }

    @Test
    void test25ARepetitionInsideAGuardedRunCanNotRepeatTheOpenParenthesis() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("a(0)"));

        assertEquals(crawler.invalidCommandErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 3), "Up"));
    }

    // sonar - firm sand

    @Test
    void test26OnFirmSandTheCrawlerMovesNormally() {
        SurveyCrawler crawler = SurveyCrawler.atFacingWithSonar(new Point(1, 2), "Up", aPosition -> new FirmSand());

        crawler.process("ahat");

        assertTrue(crawler.isAtFacing(new Point(1, 3), "Right"));
    }

    // sonar - boulder

    @Test
    void test27CanNotAdvanceIntoABoulder() {
        SurveyCrawler crawler = SurveyCrawler.atFacingWithSonar(new Point(1, 2), "Up", boulderAt(new Point(1, 3)));

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("a"));

        assertEquals(crawler.boulderFoundErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 2), "Up"));
    }

    @Test
    void test28CanNotRetreatIntoABoulder() {
        SurveyCrawler crawler = SurveyCrawler.atFacingWithSonar(new Point(1, 2), "Up", boulderAt(new Point(1, 1)));

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("t"));

        assertEquals(crawler.boulderFoundErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 2), "Up"));
    }

    @Test
    void test29CanNotTurnCounterClockwiseOnABoulder() {
        SurveyCrawler crawler = SurveyCrawler.atFacingWithSonar(new Point(1, 2), "Up", boulderAt(new Point(1, 2)));

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("g"));

        assertEquals(crawler.boulderFoundErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 2), "Up"));
    }

    @Test
    void test30CanNotTurnClockwiseOnABoulder() {
        SurveyCrawler crawler = SurveyCrawler.atFacingWithSonar(new Point(1, 2), "Up", boulderAt(new Point(1, 2)));

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("h"));

        assertEquals(crawler.boulderFoundErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 2), "Up"));
    }

    @Test
    void test31ABoulderOnlyAffectsTheCommandThatReachesIt() {
        SurveyCrawler crawler = SurveyCrawler.atFacingWithSonar(new Point(1, 2), "Up", boulderAt(new Point(1, 4)));

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("aaa"));

        assertEquals(crawler.boulderFoundErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 3), "Up"));
    }

    @Test
    void test32ABoulderStopsARepetition() {
        SurveyCrawler crawler = SurveyCrawler.atFacingWithSonar(new Point(1, 2), "Up", boulderAt(new Point(1, 5)));

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("a9"));

        assertEquals(crawler.boulderFoundErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 4), "Up"));
    }

    // sonar - silt

    @Test
    void test33OnSiltTheCrawlerSlidesAtLeastOneCell() {
        SurveyCrawler crawler = SurveyCrawler.atFacingWithSonarAndRandom(
            new Point(1, 2), "Up", siltAt(new Point(1, 3)), new FixedRandom(0));

        crawler.process("a");

        assertTrue(crawler.isAtFacing(new Point(1, 3), "Up"));
    }

    @Test
    void test34OnSiltTheCrawlerSlidesAtMostTenCells() {
        FixedRandom random = new FixedRandom(9);
        SurveyCrawler crawler = SurveyCrawler.atFacingWithSonarAndRandom(
            new Point(1, 2), "Up", siltAt(new Point(1, 3)), random);

        crawler.process("a");

        assertEquals(10, random.lastLimit());
        assertTrue(crawler.isAtFacing(new Point(1, 12), "Up"));
    }

    @Test
    void test35SlidingKeepsTheMovementDirection() {
        SurveyCrawler crawler = SurveyCrawler.atFacingWithSonarAndRandom(
            new Point(1, 2), "Right", siltAt(new Point(0, 2)), new FixedRandom(4));

        crawler.process("t");

        assertTrue(crawler.isAtFacing(new Point(-4, 2), "Right"));
    }

    @Test
    void test36SlidingWithARealRandomEndsBetweenOneAndTenCellsAway() {
        for (int i = 0; i < 200; i++) {
            SurveyCrawler crawler = SurveyCrawler.atFacingWithSonar(new Point(1, 2), "Up", siltAt(new Point(1, 3)));

            crawler.process("a");

            assertTrue(isAtAnyOf(crawler, 1, 3, 12, "Up"));
        }
    }

    @Test
    void test37SiltDoesNotAffectTurning() {
        SurveyCrawler crawler = SurveyCrawler.atFacingWithSonar(new Point(1, 2), "Up", aPosition -> new Silt());

        crawler.process("hhg");

        assertTrue(crawler.isAtFacing(new Point(1, 2), "Right"));
    }

    // guarded runs

    @Test
    void test38ASuccessfulGuardedRunKeepsItsMovements() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        crawler.process("(aah)");

        assertTrue(crawler.isAtFacing(new Point(1, 4), "Right"));
    }

    @Test
    void test39AnEmptyGuardedRunDoesNothing() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        crawler.process("()");

        assertTrue(crawler.isAtFacing(new Point(1, 2), "Up"));
    }

    @Test
    void test40ABoulderInAGuardedRunUndoesItsMovements() {
        SurveyCrawler crawler = SurveyCrawler.atFacingWithSonar(new Point(1, 2), "Up", boulderAt(new Point(1, 4)));

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("(aa)"));

        assertEquals(crawler.boulderFoundErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 2), "Up"));
    }

    @Test
    void test41AGuardedRunUndoesTurnsAndMovementsInEveryDirection() {
        SurveyCrawler crawler = SurveyCrawler.atFacingWithSonar(new Point(1, 2), "Up", boulderAt(new Point(-2, -1)));

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("(ahat0ha1ha)"));

        assertEquals(crawler.boulderFoundErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 2), "Up"));
    }

    @Test
    void test42SiltInAGuardedRunRaisesAndUndoesTheSlide() {
        SurveyCrawler crawler = SurveyCrawler.atFacingWithSonarAndRandom(
            new Point(1, 2), "Up", siltAt(new Point(1, 4)), new FixedRandom(6));

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("(hgaa)"));

        assertEquals(crawler.siltFoundDuringGuardedRunErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 2), "Up"));
    }

    @Test
    void test43AnInvalidCommandInAGuardedRunUndoesItsMovements() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("(ahax)"));

        assertEquals(crawler.invalidCommandErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 2), "Up"));
    }

    @Test
    void test44AnInvalidRepetitionInAGuardedRunUndoesItsMovements() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("(a00)"));

        assertEquals(crawler.invalidCommandErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 2), "Up"));
    }

    @Test
    void test45AFailingGuardedRunOnlyUndoesItsOwnMovements() {
        SurveyCrawler crawler = SurveyCrawler.atFacingWithSonar(new Point(1, 2), "Up", boulderAt(new Point(3, 4)));

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("a(ah)a(aa)"));

        assertEquals(crawler.boulderFoundErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(2, 4), "Right"));
    }

    @Test
    void test46ASequenceCanHaveManyGuardedRuns() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        crawler.process("aha(aagt3)aa(ht)");

        assertTrue(crawler.isAtFacing(new Point(3, -1), "Right"));
    }

    @Test
    void test47AGuardedRunCanNotBeStartedInsideAnother() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("aa(aa(ht)a)"));

        assertEquals(crawler.guardedRunAlreadyStartedErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 4), "Up"));
    }

    @Test
    void test48AGuardedRunMustBeFinished() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("a(aa"));

        assertEquals(crawler.guardedRunNotFinishedErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 3), "Up"));
    }

    @Test
    void test49AGuardedRunCanNotBeFinishedWithoutBeingStarted() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("a)a"));

        assertEquals(crawler.guardedRunNotStartedErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 3), "Up"));
    }

    @Test
    void test50AGuardedRunCanNotBeFinishedTwice() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("(a))"));

        assertEquals(crawler.guardedRunNotStartedErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 3), "Up"));
    }

    @Test
    void test51AGuardedRunDoesNotSpanManySequences() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        assertThrows(RuntimeException.class, () -> crawler.process("(a"));
        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("a)"));

        assertEquals(crawler.guardedRunNotStartedErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 3), "Up"));
    }

    @Test
    void test52AfterAFailedGuardedRunTheCrawlerIsNotGuardedAnymore() {
        SurveyCrawler crawler = SurveyCrawler.atFacingWithSonar(new Point(1, 2), "Up", boulderAt(new Point(1, 4)));

        assertThrows(RuntimeException.class, () -> crawler.process("(aa)"));
        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("aa"));

        assertEquals(crawler.boulderFoundErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 3), "Up"));
    }

    @Test
    void test53SiltOutsideAGuardedRunIsNotAnError() {
        SurveyCrawler crawler = SurveyCrawler.atFacingWithSonarAndRandom(
            new Point(1, 2), "Up", siltAt(new Point(1, 3)), new FixedRandom(2));

        crawler.process("(h)ga(h)");

        assertTrue(crawler.isAtFacing(new Point(1, 5), "Right"));
    }

    // support

    private Sonar boulderAt(Point aBoulderPosition) {
        return aPosition -> aPosition.equals(aBoulderPosition) ? new Boulder() : new FirmSand();
    }

    private Sonar siltAt(Point aSiltPosition) {
        return aPosition -> aPosition.equals(aSiltPosition) ? new Silt() : new FirmSand();
    }

    private boolean isAtAnyOf(SurveyCrawler aCrawler, int x, int fromY, int toY, String aFacingName) {
        for (int y = fromY; y <= toY; y++) {
            if (aCrawler.isAtFacing(new Point(x, y), aFacingName)) {
                return true;
            }
        }
        return false;
    }

    private static class FixedRandom extends Random {

        private final int value;
        private int lastLimit;

        FixedRandom(int aValue) {
            value = aValue;
        }

        @Override
        public int nextInt(int aLimit) {
            lastLimit = aLimit;
            return value;
        }

        int lastLimit() {
            return lastLimit;
        }
    }
}
