package surveycrawler;

import org.junit.jupiter.api.Test;

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
    void test17DigitAfterACommandRepeatsItTwoMoreTimesThanTheDigit() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        crawler.process("a0");

        assertTrue(crawler.isAtFacing(new Point(1, 5), "Up"));
    }

    @Test
    void test18DigitOneRepeatsTheLastCommandThreeMoreTimes() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        crawler.process("a1");

        assertTrue(crawler.isAtFacing(new Point(1, 6), "Up"));
    }

    @Test
    void test19DigitNineRepeatsTheLastCommandElevenMoreTimes() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        crawler.process("a9");

        assertTrue(crawler.isAtFacing(new Point(1, 14), "Up"));
    }

    @Test
    void test20RetreatCommandCanBeRepeated() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        crawler.process("t0");

        assertTrue(crawler.isAtFacing(new Point(1, -1), "Up"));
    }

    @Test
    void test21TurnClockwiseCommandCanBeRepeated() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        crawler.process("h0");

        assertTrue(crawler.isAtFacing(new Point(1, 2), "Left"));
    }

    @Test
    void test22TurnCounterClockwiseCommandCanBeRepeated() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        crawler.process("g1");

        assertTrue(crawler.isAtFacing(new Point(1, 2), "Up"));
    }

    @Test
    void test23RepetitionIsAppliedOnlyToTheLastCommand() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        crawler.process("aha0");

        assertTrue(crawler.isAtFacing(new Point(4, 3), "Right"));
    }

    @Test
    void test24ADigitWithNoPreviousCommandIsAnInvalidCommand() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("0"));

        assertEquals(crawler.invalidCommandErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 2), "Up"));
    }

    @Test
    void test25ADigitCanNotBeRepeated() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("a00"));

        assertEquals(crawler.invalidCommandErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 5), "Up"));
    }

    @Test
    void test26AnInvalidCommandCanNotBeRepeated() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("ax0"));

        assertEquals(crawler.invalidCommandErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 3), "Up"));
    }

    // boulders

    @Test
    void test27CanNotAdvanceToABoulder() {
        Sonar sonar = new GroundMapSonar().withBoulderAt(new Point(1, 3));
        SurveyCrawler crawler = SurveyCrawler.atFacingWithSonar(new Point(1, 2), "Up", sonar);

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("a"));

        assertEquals(crawler.canNotMoveToBoulderErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 2), "Up"));
    }

    @Test
    void test28CanNotRetreatToABoulder() {
        Sonar sonar = new GroundMapSonar().withBoulderAt(new Point(1, 1));
        SurveyCrawler crawler = SurveyCrawler.atFacingWithSonar(new Point(1, 2), "Up", sonar);

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("t"));

        assertEquals(crawler.canNotMoveToBoulderErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 2), "Up"));
    }

    @Test
    void test29CanNotTurnClockwiseWhenStandingOnABoulder() {
        Sonar sonar = new GroundMapSonar().withBoulderAt(new Point(1, 2));
        SurveyCrawler crawler = SurveyCrawler.atFacingWithSonar(new Point(1, 2), "Up", sonar);

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("h"));

        assertEquals(crawler.canNotTurnOnBoulderErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 2), "Up"));
    }

    @Test
    void test30CanNotTurnCounterClockwiseWhenStandingOnABoulder() {
        Sonar sonar = new GroundMapSonar().withBoulderAt(new Point(1, 2));
        SurveyCrawler crawler = SurveyCrawler.atFacingWithSonar(new Point(1, 2), "Up", sonar);

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("g"));

        assertEquals(crawler.canNotTurnOnBoulderErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 2), "Up"));
    }

    @Test
    void test31BouldersOutOfTheWayDoNotAffectTheCrawler() {
        Sonar sonar = new GroundMapSonar()
                .withBoulderAt(new Point(2, 3))
                .withBoulderAt(new Point(1, 5));
        SurveyCrawler crawler = SurveyCrawler.atFacingWithSonar(new Point(1, 2), "Up", sonar);

        crawler.process("aa");

        assertTrue(crawler.isAtFacing(new Point(1, 4), "Up"));
    }

    @Test
    void test32RepetitionStopsWhenABoulderIsFound() {
        Sonar sonar = new GroundMapSonar().withBoulderAt(new Point(1, 4));
        SurveyCrawler crawler = SurveyCrawler.atFacingWithSonar(new Point(1, 2), "Up", sonar);

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("a0"));

        assertEquals(crawler.canNotMoveToBoulderErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 3), "Up"));
    }

    // silt

    @Test
    void test33AdvancingToSiltMakesTheCrawlerSlide() {
        Sonar sonar = new GroundMapSonar().withSiltAt(new Point(1, 3), new FixedSiltSlide(4));
        SurveyCrawler crawler = SurveyCrawler.atFacingWithSonar(new Point(1, 2), "Up", sonar);

        crawler.process("a");

        assertTrue(crawler.isAtFacing(new Point(1, 6), "Up"));
    }

    @Test
    void test34SlidingOnlyOneCellLeavesTheCrawlerOnTheSilt() {
        Sonar sonar = new GroundMapSonar().withSiltAt(new Point(1, 3), new FixedSiltSlide(1));
        SurveyCrawler crawler = SurveyCrawler.atFacingWithSonar(new Point(1, 2), "Up", sonar);

        crawler.process("a");

        assertTrue(crawler.isAtFacing(new Point(1, 3), "Up"));
    }

    @Test
    void test35SlidingTheMaximumNumberOfCellsMovesTenCells() {
        Sonar sonar = new GroundMapSonar().withSiltAt(new Point(1, 3),
                new FixedSiltSlide(RandomSiltSlide.maximumCellsToSlide()));
        SurveyCrawler crawler = SurveyCrawler.atFacingWithSonar(new Point(1, 2), "Up", sonar);

        crawler.process("a");

        assertTrue(crawler.isAtFacing(new Point(1, 12), "Up"));
    }

    @Test
    void test36SlidingOnSiltIsUnpredictableButNeverMoreThanTenCells() {
        int numberOfRuns = 500;
        int differentPositions = 0;

        for (int y = 3; y <= 12; y++) {
            int positionsFound = 0;
            for (int aRun = 0; aRun < numberOfRuns; aRun++) {
                SurveyCrawler crawler = SurveyCrawler.atFacingWithSonar(new Point(1, 2), "Up",
                        new GroundMapSonar().withSiltAt(new Point(1, 3)));
                crawler.process("a");
                positionsFound += crawler.isAtFacing(new Point(1, y), "Up") ? 1 : 0;
            }
            differentPositions += positionsFound > 0 ? 1 : 0;
        }

        assertEquals(10, differentPositions);
    }

    @Test
    void test37SlidingOnSiltNeverEndsOutOfTheSlidingLimits() {
        for (int aRun = 0; aRun < 500; aRun++) {
            SurveyCrawler crawler = SurveyCrawler.atFacingWithSonar(new Point(1, 2), "Up",
                    new GroundMapSonar().withSiltAt(new Point(1, 3)));

            crawler.process("a");

            assertTrue(isAtAnyOfFacingUp(crawler, new Point(1, 3), 10, new Point(0, 1)));
        }
    }

    @Test
    void test38RetreatingToSiltMakesTheCrawlerSlideBackwards() {
        Sonar sonar = new GroundMapSonar().withSiltAt(new Point(1, 1), new FixedSiltSlide(3));
        SurveyCrawler crawler = SurveyCrawler.atFacingWithSonar(new Point(1, 2), "Up", sonar);

        crawler.process("t");

        assertTrue(crawler.isAtFacing(new Point(1, -1), "Up"));
    }

    @Test
    void test39SlidingOnSiltFollowsTheDirectionTheCrawlerWasGoing() {
        Sonar sonar = new GroundMapSonar().withSiltAt(new Point(2, 2), new FixedSiltSlide(3));
        SurveyCrawler crawler = SurveyCrawler.atFacingWithSonar(new Point(1, 2), "Right", sonar);

        crawler.process("a");

        assertTrue(crawler.isAtFacing(new Point(4, 2), "Right"));
    }

    @Test
    void test40SiltDoesNotAffectTurning() {
        Sonar sonar = new GroundMapSonar().withSiltAt(new Point(1, 2), new FixedSiltSlide(10));
        SurveyCrawler crawler = SurveyCrawler.atFacingWithSonar(new Point(1, 2), "Up", sonar);

        crawler.process("hg0");

        assertTrue(crawler.isAtFacing(new Point(1, 2), "Down"));
    }

    // guarded runs

    @Test
    void test41GuardedRunWithNoProblemsBehavesLikeAnUnguardedRun() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        crawler.process("(aah)");

        assertTrue(crawler.isAtFacing(new Point(1, 4), "Right"));
    }

    @Test
    void test42GuardedRunReturnsToItsInitialPositionWhenABoulderIsFound() {
        Sonar sonar = new GroundMapSonar().withBoulderAt(new Point(1, 4));
        SurveyCrawler crawler = SurveyCrawler.atFacingWithSonar(new Point(1, 2), "Up", sonar);

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("(aa)"));

        assertEquals(crawler.canNotMoveToBoulderErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 2), "Up"));
    }

    @Test
    void test43GuardedRunReturnsToItsInitialFacingWhenItFails() {
        Sonar sonar = new GroundMapSonar().withBoulderAt(new Point(2, 1));
        SurveyCrawler crawler = SurveyCrawler.atFacingWithSonar(new Point(1, 2), "Up", sonar);

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("(haha)"));

        assertEquals(crawler.canNotMoveToBoulderErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 2), "Up"));
    }

    @Test
    void test44GuardedRunUndoesAllTheMovementsItMade() {
        Sonar sonar = new GroundMapSonar().withBoulderAt(new Point(4, 7));
        SurveyCrawler crawler = SurveyCrawler.atFacingWithSonar(new Point(1, 2), "Up", sonar);

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("a(a1hataghaa)"));

        assertEquals(crawler.canNotMoveToBoulderErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 3), "Up"));
    }

    @Test
    void test45CanNotSlideOnSiltDuringAGuardedRun() {
        Sonar sonar = new GroundMapSonar().withSiltAt(new Point(1, 4), new FixedSiltSlide(5));
        SurveyCrawler crawler = SurveyCrawler.atFacingWithSonar(new Point(1, 2), "Up", sonar);

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("(aa)"));

        assertEquals(crawler.canNotSlideDuringGuardedRunErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 2), "Up"));
    }

    @Test
    void test46InvalidCommandsDuringAGuardedRunReturnTheCrawlerToItsInitialPosition() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("a(ahax)"));

        assertEquals(crawler.invalidCommandErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 3), "Up"));
    }

    @Test
    void test47CanNotStartAGuardedRunDuringAGuardedRun() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("aa(aa(ht)a)"));

        assertEquals(crawler.canNotStartGuardedRunDuringGuardedRunErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 4), "Up"));
    }

    @Test
    void test48GuardedRunsHaveToBeFinished() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("a(aa"));

        assertEquals(crawler.unfinishedGuardedRunErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 3), "Up"));
    }

    @Test
    void test49AGuardedRunCanBeEmpty() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        crawler.process("a()a");

        assertTrue(crawler.isAtFacing(new Point(1, 4), "Up"));
    }

    @Test
    void test50AGuardedRunEndWithNoGuardedRunStartedIsAnInvalidCommand() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("a)"));

        assertEquals(crawler.invalidCommandErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 3), "Up"));
    }

    @Test
    void test51ASequenceCanHaveMoreThanOneGuardedRun() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        crawler.process("aha(aagt3)aa(ht)");

        assertTrue(crawler.isAtFacing(new Point(3, -1), "Right"));
    }

    @Test
    void test52FinishedGuardedRunsAreNotUndoneWhenALaterCommandFails() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("(aa)x"));

        assertEquals(crawler.invalidCommandErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 4), "Up"));
    }

    @Test
    void test53CommandsCanBeRepeatedDuringAGuardedRun() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        crawler.process("(a0)");

        assertTrue(crawler.isAtFacing(new Point(1, 5), "Up"));
    }

    @Test
    void test54ARepetitionThatFailsDuringAGuardedRunUndoesAllItsMovements() {
        Sonar sonar = new GroundMapSonar().withBoulderAt(new Point(1, 5));
        SurveyCrawler crawler = SurveyCrawler.atFacingWithSonar(new Point(1, 2), "Up", sonar);

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("(a0)"));

        assertEquals(crawler.canNotMoveToBoulderErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 2), "Up"));
    }

    @Test
    void test55ACommandBeforeAGuardedRunCanNotBeRepeatedInsideIt() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("a(0)"));

        assertEquals(crawler.invalidCommandErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 3), "Up"));
    }

    @Test
    void test56ACommandInsideAGuardedRunCanNotBeRepeatedAfterIt() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("(a)0"));

        assertEquals(crawler.invalidCommandErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 3), "Up"));
    }

    @Test
    void test57UndoingAGuardedRunDoesNotSlideOnTheSiltItReturnsTo() {
        Sonar sonar = new GroundMapSonar()
                .withSiltAt(new Point(1, 2), new FixedSiltSlide(10))
                .withBoulderAt(new Point(1, 4));
        SurveyCrawler crawler = SurveyCrawler.atFacingWithSonar(new Point(1, 2), "Up", sonar);

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("(aa)"));

        assertEquals(crawler.canNotMoveToBoulderErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 2), "Up"));
    }

    @Test
    void test58TheCrawlerKeepsWorkingNormallyAfterAGuardedRunFails() {
        Sonar sonar = new GroundMapSonar()
                .withBoulderAt(new Point(1, 3))
                .withSiltAt(new Point(2, 2), new FixedSiltSlide(3));
        SurveyCrawler crawler = SurveyCrawler.atFacingWithSonar(new Point(1, 2), "Up", sonar);

        assertThrows(RuntimeException.class, () -> crawler.process("(a)"));

        crawler.process("ha");

        assertTrue(crawler.isAtFacing(new Point(4, 2), "Right"));
    }

    // test support

    private boolean isAtAnyOfFacingUp(SurveyCrawler aCrawler, Point aFirstPosition, int numberOfPositions, Point aDirection) {
        for (int i = 0; i < numberOfPositions; i++) {
            if (aCrawler.isAtFacing(aFirstPosition.plus(aDirection.times(i)), "Up")) {
                return true;
            }
        }
        return false;
    }

    private static class FixedSiltSlide implements SiltSlide {

        private final int cellsToSlide;

        FixedSiltSlide(int numberOfCellsToSlide) {
            cellsToSlide = numberOfCellsToSlide;
        }

        @Override
        public int cellsToSlide() {
            return cellsToSlide;
        }
    }
}
