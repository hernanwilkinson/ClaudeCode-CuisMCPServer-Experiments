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

    // command repetition

    @Test
    void test17ADigitRepeatsTheLastCommandTwoMoreTimesThanItsValue() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        crawler.process("a0");

        assertTrue(crawler.isAtFacing(new Point(1, 5), "Up"));
    }

    @Test
    void test18ADigitRepetitionUsesTheValueOfTheDigit() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        crawler.process("a1");

        assertTrue(crawler.isAtFacing(new Point(1, 6), "Up"));
    }

    @Test
    void test19TheBiggestRepetitionIsTwelveTimes() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        crawler.process("a9");

        assertTrue(crawler.isAtFacing(new Point(1, 14), "Up"));
    }

    @Test
    void test20RetreatCanBeRepeated() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        crawler.process("t0");

        assertTrue(crawler.isAtFacing(new Point(1, -1), "Up"));
    }

    @Test
    void test21TurnClockwiseCanBeRepeated() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        crawler.process("h0");

        assertTrue(crawler.isAtFacing(new Point(1, 2), "Left"));
    }

    @Test
    void test22TurnCounterClockwiseCanBeRepeated() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        crawler.process("g0");

        assertTrue(crawler.isAtFacing(new Point(1, 2), "Right"));
    }

    @Test
    void test23ADigitOnlyRepeatsTheCommandRightBeforeIt() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        crawler.process("aa0");

        assertTrue(crawler.isAtFacing(new Point(1, 6), "Up"));
    }

    @Test
    void test24ADigitWithNoCommandBeforeItIsInvalid() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("0"));

        assertEquals(crawler.invalidCommandErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 2), "Up"));
    }

    @Test
    void test25ADigitCanNotBeRepeatedByAnotherDigit() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("a00"));

        assertEquals(crawler.invalidCommandErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 5), "Up"));
    }

    @Test
    void test26ADigitCanNotRepeatTheStartOfAGuardedRun() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("a(0)"));

        assertEquals(crawler.invalidCommandErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 3), "Up"));
    }

    @Test
    void test27ADigitCanNotRepeatTheEndOfAGuardedRun() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("(a)0"));

        assertEquals(crawler.invalidCommandErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 3), "Up"));
    }

    // boulders

    @Test
    void test28CanNotAdvanceToABoulder() {
        SurveyCrawler crawler = crawlerAtFacingUpWith(new Point(1, 3), new Boulder());

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("a"));

        assertEquals(crawler.boulderFoundErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 2), "Up"));
    }

    @Test
    void test29CanNotRetreatToABoulder() {
        SurveyCrawler crawler = crawlerAtFacingUpWith(new Point(1, 1), new Boulder());

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("t"));

        assertEquals(crawler.boulderFoundErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 2), "Up"));
    }

    @Test
    void test30CanNotTurnCounterClockwiseOnABoulder() {
        SurveyCrawler crawler = crawlerAtFacingUpWith(new Point(1, 2), new Boulder());

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("g"));

        assertEquals(crawler.boulderFoundErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 2), "Up"));
    }

    @Test
    void test31CanNotTurnClockwiseOnABoulder() {
        SurveyCrawler crawler = crawlerAtFacingUpWith(new Point(1, 2), new Boulder());

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("h"));

        assertEquals(crawler.boulderFoundErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 2), "Up"));
    }

    @Test
    void test32ABoulderOnlyBlocksThePositionItIsIn() {
        SurveyCrawler crawler = crawlerAtFacingUpWith(new Point(1, 4), new Boulder());

        crawler.process("a");

        assertTrue(crawler.isAtFacing(new Point(1, 3), "Up"));
    }

    @Test
    void test33CommandsProcessedBeforeFindingABoulderAreNotUndoneOutOfAGuardedRun() {
        SurveyCrawler crawler = crawlerAtFacingUpWith(new Point(1, 4), new Boulder());

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("aa"));

        assertEquals(crawler.boulderFoundErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 3), "Up"));
    }

    // silt

    @Test
    void test34TheCrawlerSlidesAtLeastOneCellWhenAdvancingToSilt() {
        SurveyCrawler crawler = crawlerAtFacingUpWith(new Point(1, 3), siltSliding(1));

        crawler.process("a");

        assertTrue(crawler.isAtFacing(new Point(1, 3), "Up"));
    }

    @Test
    void test35TheCrawlerSlidesUpToTenCellsWhenAdvancingToSilt() {
        SurveyCrawler crawler = crawlerAtFacingUpWith(new Point(1, 3), siltSliding(10));

        crawler.process("a");

        assertTrue(crawler.isAtFacing(new Point(1, 12), "Up"));
    }

    @Test
    void test36TheSlideOnSiltIsAtMostTenCells() {
        SlideRandom random = new SlideRandom(0);
        SurveyCrawler crawler = crawlerAtFacingUpWith(new Point(1, 3), new Silt(random));

        crawler.process("a");

        assertEquals(Silt.maximumSlide(), random.lastBound());
        assertEquals(10, Silt.maximumSlide());
    }

    @Test
    void test37TheCrawlerSlidesBackwardsWhenRetreatingToSilt() {
        SurveyCrawler crawler = crawlerAtFacingUpWith(new Point(1, 1), siltSliding(3));

        crawler.process("t");

        assertTrue(crawler.isAtFacing(new Point(1, -1), "Up"));
    }

    @Test
    void test38TheCrawlerSlidesInTheDirectionItIsGoing() {
        Sonar sonar = GroundMapSonar.empty().with(new Point(2, 2), siltSliding(2));
        SurveyCrawler crawler = SurveyCrawler.atFacingSonar(new Point(1, 2), "Right", sonar);

        crawler.process("a");

        assertTrue(crawler.isAtFacing(new Point(3, 2), "Right"));
    }

    @Test
    void test39SiltDoesNotAffectTurning() {
        SurveyCrawler crawler = crawlerAtFacingUpWith(new Point(1, 2), siltSliding(5));

        crawler.process("hh");

        assertTrue(crawler.isAtFacing(new Point(1, 2), "Down"));
    }

    @Test
    void test40TheSlideOnSiltIsAlwaysBetweenOneAndTenCells() {
        for (int i = 1; i <= 100; i++) {
            SurveyCrawler crawler = crawlerAtFacingUpWith(new Point(1, 3), new Silt());

            crawler.process("a");

            assertTrue(slidTo(crawler), "The crawler slid out of the silt limits");
        }
    }

    // guarded runs

    @Test
    void test41CommandsOfAGuardedRunAreProcessedAsUsualWhenThereIsNoProblem() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        crawler.process("(aah)");

        assertTrue(crawler.isAtFacing(new Point(1, 4), "Right"));
    }

    @Test
    void test42MovementsOfAGuardedRunAreUndoneWhenABoulderIsFound() {
        SurveyCrawler crawler = crawlerAtFacingUpWith(new Point(1, 4), new Boulder());

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("(aa)"));

        assertEquals(crawler.boulderFoundErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 2), "Up"));
    }

    @Test
    void test43TurnsOfAGuardedRunAreAlsoUndone() {
        SurveyCrawler crawler = crawlerAtFacingUpWith(new Point(0, 2), new Boulder());

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("(ga)"));

        assertEquals(crawler.boulderFoundErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 2), "Up"));
    }

    @Test
    void test44OnlyTheMovementsOfTheGuardedRunAreUndone() {
        SurveyCrawler crawler = crawlerAtFacingUpWith(new Point(1, 5), new Boulder());

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("a(aa)"));

        assertEquals(crawler.boulderFoundErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 3), "Up"));
    }

    @Test
    void test45MovementsInSeveralDirectionsAreAllUndone() {
        SurveyCrawler crawler = crawlerAtFacingUpWith(new Point(3, 3), new Boulder());

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("(ahaa)"));

        assertEquals(crawler.boulderFoundErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 2), "Up"));
    }

    @Test
    void test46CanNotMoveOnSiltDuringAGuardedRun() {
        SurveyCrawler crawler = crawlerAtFacingUpWith(new Point(1, 4), siltSliding(3));

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("(aa)"));

        assertEquals(crawler.unpredictableMovementErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 2), "Up"));
    }

    @Test
    void test47CanTurnOnSiltDuringAGuardedRun() {
        SurveyCrawler crawler = crawlerAtFacingUpWith(new Point(1, 2), siltSliding(3));

        crawler.process("(h)");

        assertTrue(crawler.isAtFacing(new Point(1, 2), "Right"));
    }

    @Test
    void test48InvalidCommandsDuringAGuardedRunUndoTheGuardedRun() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("(ahx)"));

        assertEquals(crawler.invalidCommandErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 2), "Up"));
    }

    @Test
    void test49CanNotStartAGuardedRunInsideAGuardedRun() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("aa(aa(ht)a)"));

        assertEquals(crawler.guardedRunAlreadyStartedErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 4), "Up"));
    }

    @Test
    void test50GuardedRunsHaveToBeFinished() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("a(aa"));

        assertEquals(crawler.guardedRunNotFinishedErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 3), "Up"));
    }

    @Test
    void test51CanNotFinishAGuardedRunThatWasNotStarted() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("a)"));

        assertEquals(crawler.guardedRunNotStartedErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 3), "Up"));
    }

    @Test
    void test52ASequenceOfCommandsCanHaveMoreThanOneGuardedRun() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        crawler.process("aha(aagt3)aa(ht)");

        assertTrue(crawler.isAtFacing(new Point(3, -1), "Right"));
    }

    @Test
    void test53RepeatedCommandsOfAGuardedRunAreAlsoUndone() {
        SurveyCrawler crawler = crawlerAtFacingUpWith(new Point(1, 6), new Boulder());

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("(a2)"));

        assertEquals(crawler.boulderFoundErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 2), "Up"));
    }

    @Test
    void test54TheCrawlerCanKeepOnProcessingCommandsAfterAFailedGuardedRun() {
        SurveyCrawler crawler = crawlerAtFacingUpWith(new Point(1, 4), new Boulder());

        assertThrows(RuntimeException.class, () -> crawler.process("(aa)"));
        crawler.process("ha");

        assertTrue(crawler.isAtFacing(new Point(2, 2), "Right"));
    }

    @Test
    void test55AFailedGuardedRunDoesNotUndoTheMovementsOfTheGuardedRunsBeforeIt() {
        SurveyCrawler crawler = crawlerAtFacingUpWith(new Point(1, 6), new Boulder());

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("(aa)(aa)"));

        assertEquals(crawler.boulderFoundErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 4), "Up"));
    }

    // test support

    private SurveyCrawler crawlerAtFacingUpWith(Point aPosition, Ground aGround) {
        return SurveyCrawler.atFacingSonar(new Point(1, 2), "Up", GroundMapSonar.empty().with(aPosition, aGround));
    }

    private Silt siltSliding(int aNumberOfCells) {
        return new Silt(new SlideRandom(aNumberOfCells - 1));
    }

    private boolean slidTo(SurveyCrawler crawler) {
        for (int y = 3; y <= 12; y++) {
            if (crawler.isAtFacing(new Point(1, y), "Up")) {
                return true;
            }
        }
        return false;
    }

    private static class SlideRandom extends Random {

        private final int valueToReturn;
        private int lastBound = 0;

        SlideRandom(int aValueToReturn) {
            valueToReturn = aValueToReturn;
        }

        int lastBound() {
            return lastBound;
        }

        @Override
        public int nextInt(int aBound) {
            lastBound = aBound;
            return valueToReturn;
        }
    }
}
