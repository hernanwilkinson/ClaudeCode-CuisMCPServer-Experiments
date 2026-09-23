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

    // repetition of commands

    @Test
    void test17DigitAfteraRepeatsAdvanceTheDigitPlusTwoTimes() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        crawler.process("a0");

        assertTrue(crawler.isAtFacing(new Point(1, 5), "Up"));
    }

    @Test
    void test18DigitRepetitionsDependOnTheDigit() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        crawler.process("a1");

        assertTrue(crawler.isAtFacing(new Point(1, 6), "Up"));
    }

    @Test
    void test19NineIsTheBiggestNumberOfRepetitions() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        crawler.process("a9");

        assertTrue(crawler.isAtFacing(new Point(1, 14), "Up"));
    }

    @Test
    void test20DigitAftertRepeatsRetreat() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        crawler.process("t0");

        assertTrue(crawler.isAtFacing(new Point(1, -1), "Up"));
    }

    @Test
    void test21DigitAfterhRepeatsTurnClockwise() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        crawler.process("h0");

        assertTrue(crawler.isAtFacing(new Point(1, 2), "Left"));
    }

    @Test
    void test22DigitAftergRepeatsTurnCounterClockwise() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        crawler.process("g0");

        assertTrue(crawler.isAtFacing(new Point(1, 2), "Right"));
    }

    @Test
    void test23OnlyTheLastCommandIsRepeated() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        crawler.process("at0");

        assertTrue(crawler.isAtFacing(new Point(1, 0), "Up"));
    }

    @Test
    void test24CommandsCanBeProcessedAfterARepetition() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        crawler.process("a0h");

        assertTrue(crawler.isAtFacing(new Point(1, 5), "Right"));
    }

    @Test
    void test25DigitWithoutACommandToRepeatIsInvalid() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("0"));

        assertEquals(crawler.invalidCommandErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 2), "Up"));
    }

    @Test
    void test26ADigitCanNotBeRepeated() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("a00"));

        assertEquals(crawler.invalidCommandErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 5), "Up"));
    }

    @Test
    void test27StartOfGuardedRunCanNotBeRepeated() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("a(0a)"));

        assertEquals(crawler.invalidCommandErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 3), "Up"));
    }

    @Test
    void test28EndOfGuardedRunCanNotBeRepeated() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("(a)0"));

        assertEquals(crawler.invalidCommandErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 3), "Up"));
    }

    // sonar - firm sand

    @Test
    void test29CrawlerMovesNormallyOnFirmSand() {
        SurveyCrawler crawler = SurveyCrawler.atFacingWithSonar(
            new Point(1, 2), "Up", SeabedSonar.firmSeabed().withGroundTypeAt(new FirmSand(), new Point(1, 3)));

        crawler.process("a");

        assertTrue(crawler.isAtFacing(new Point(1, 3), "Up"));
    }

    // sonar - boulder

    @Test
    void test30CrawlerCanNotAdvanceToABoulder() {
        SurveyCrawler crawler = SurveyCrawler.atFacingWithSonar(
            new Point(1, 2), "Up", SeabedSonar.firmSeabed().withBoulderAt(new Point(1, 3)));

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("a"));

        assertEquals(crawler.boulderFoundErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 2), "Up"));
    }

    @Test
    void test31CrawlerCanNotRetreatToABoulder() {
        SurveyCrawler crawler = SurveyCrawler.atFacingWithSonar(
            new Point(1, 2), "Up", SeabedSonar.firmSeabed().withBoulderAt(new Point(1, 1)));

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("t"));

        assertEquals(crawler.boulderFoundErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 2), "Up"));
    }

    @Test
    void test32CrawlerCanNotTurnCounterClockwiseWhenOnABoulder() {
        SurveyCrawler crawler = SurveyCrawler.atFacingWithSonar(
            new Point(1, 2), "Up", SeabedSonar.firmSeabed().withBoulderAt(new Point(1, 2)));

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("g"));

        assertEquals(crawler.boulderFoundErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 2), "Up"));
    }

    @Test
    void test33CrawlerCanNotTurnClockwiseWhenOnABoulder() {
        SurveyCrawler crawler = SurveyCrawler.atFacingWithSonar(
            new Point(1, 2), "Up", SeabedSonar.firmSeabed().withBoulderAt(new Point(1, 2)));

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("h"));

        assertEquals(crawler.boulderFoundErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 2), "Up"));
    }

    @Test
    void test34CrawlerCanMoveOutOfABoulder() {
        SurveyCrawler crawler = SurveyCrawler.atFacingWithSonar(
            new Point(1, 2), "Up", SeabedSonar.firmSeabed().withBoulderAt(new Point(1, 2)));

        crawler.process("a");

        assertTrue(crawler.isAtFacing(new Point(1, 3), "Up"));
    }

    @Test
    void test35CommandsProcessedBeforeFindingABoulderAreNotUndone() {
        SurveyCrawler crawler = SurveyCrawler.atFacingWithSonar(
            new Point(1, 2), "Up", SeabedSonar.firmSeabed().withBoulderAt(new Point(1, 4)));

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("aa"));

        assertEquals(crawler.boulderFoundErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 3), "Up"));
    }

    // sonar - silt

    @Test
    void test36CrawlerSlidesWhenAdvancingToSilt() {
        SurveyCrawler crawler = SurveyCrawler.atFacingWithSonar(
            new Point(1, 2), "Up", SeabedSonar.firmSeabed().withSiltAt(new Point(1, 3), () -> 4));

        crawler.process("a");

        assertTrue(crawler.isAtFacing(new Point(1, 6), "Up"));
    }

    @Test
    void test37CrawlerCanSlideJustToTheCommandedPosition() {
        SurveyCrawler crawler = SurveyCrawler.atFacingWithSonar(
            new Point(1, 2), "Up", SeabedSonar.firmSeabed().withSiltAt(new Point(1, 3), () -> 1));

        crawler.process("a");

        assertTrue(crawler.isAtFacing(new Point(1, 3), "Up"));
    }

    @Test
    void test38CrawlerCanSlideUpToTheSlidingLimit() {
        SurveyCrawler crawler = SurveyCrawler.atFacingWithSonar(
            new Point(1, 2), "Up", SeabedSonar.firmSeabed().withSiltAt(new Point(1, 3), () -> RandomSiltSlide.slidingLimit));

        crawler.process("a");

        assertTrue(crawler.isAtFacing(new Point(1, 12), "Up"));
    }

    @Test
    void test39CrawlerSlidesInTheDirectionItWasGoingWhenRetreatingToSilt() {
        SurveyCrawler crawler = SurveyCrawler.atFacingWithSonar(
            new Point(1, 2), "Up", SeabedSonar.firmSeabed().withSiltAt(new Point(1, 1), () -> 3));

        crawler.process("t");

        assertTrue(crawler.isAtFacing(new Point(1, -1), "Up"));
    }

    @Test
    void test40SiltDoesNotAffectTurning() {
        SurveyCrawler crawler = SurveyCrawler.atFacingWithSonar(
            new Point(1, 2), "Up", SeabedSonar.firmSeabed().withSiltAt(new Point(1, 2), () -> 5));

        crawler.process("h");

        assertTrue(crawler.isAtFacing(new Point(1, 2), "Right"));
    }

    @Test
    void test41RandomSlidesAreAlwaysInsideTheSlidingLimit() {
        for (int attempt = 0; attempt < 100; attempt++) {
            SurveyCrawler crawler = SurveyCrawler.atFacingWithSonar(
                new Point(1, 2), "Up", SeabedSonar.firmSeabed().withSiltAt(new Point(1, 3)));

            crawler.process("a");

            boolean isInsideSlidingLimit = false;
            for (int slide = 1; slide <= RandomSiltSlide.slidingLimit; slide++) {
                isInsideSlidingLimit = isInsideSlidingLimit || crawler.isAtFacing(new Point(1, 2 + slide), "Up");
            }
            assertTrue(isInsideSlidingLimit);
        }
    }

    // guarded run

    @Test
    void test42GuardedRunWithoutProblemsProcessesItsCommands() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        crawler.process("(ah)");

        assertTrue(crawler.isAtFacing(new Point(1, 3), "Right"));
    }

    @Test
    void test43CommandsAreProcessedAfterAGuardedRunFinishes() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        crawler.process("a(a)a");

        assertTrue(crawler.isAtFacing(new Point(1, 5), "Up"));
    }

    @Test
    void test44CommandsCanBeRepeatedInsideAGuardedRun() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        crawler.process("(a0)");

        assertTrue(crawler.isAtFacing(new Point(1, 5), "Up"));
    }

    @Test
    void test45GuardedRunUndoesItsMovementsWhenFindingABoulder() {
        SurveyCrawler crawler = SurveyCrawler.atFacingWithSonar(
            new Point(1, 2), "Up", SeabedSonar.firmSeabed().withBoulderAt(new Point(1, 4)));

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("(aa)"));

        assertEquals(crawler.boulderFoundErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 2), "Up"));
    }

    @Test
    void test46GuardedRunUndoesItsTurnsWhenFindingABoulder() {
        SurveyCrawler crawler = SurveyCrawler.atFacingWithSonar(
            new Point(1, 2), "Up", SeabedSonar.firmSeabed().withBoulderAt(new Point(2, 3)));

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("(aha)"));

        assertEquals(crawler.boulderFoundErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 2), "Up"));
    }

    @Test
    void test47GuardedRunUndoesRepeatedCommands() {
        SurveyCrawler crawler = SurveyCrawler.atFacingWithSonar(
            new Point(1, 2), "Up", SeabedSonar.firmSeabed().withBoulderAt(new Point(1, 5)));

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("(a0)"));

        assertEquals(crawler.boulderFoundErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 2), "Up"));
    }

    @Test
    void test48OnlyTheCommandsOfTheGuardedRunAreUndone() {
        SurveyCrawler crawler = SurveyCrawler.atFacingWithSonar(
            new Point(1, 2), "Up", SeabedSonar.firmSeabed().withBoulderAt(new Point(1, 5)));

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("a(a)a(a)"));

        assertEquals(crawler.boulderFoundErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 4), "Up"));
    }

    @Test
    void test49GuardedRunCanNotMoveOnSilt() {
        SurveyCrawler crawler = SurveyCrawler.atFacingWithSonar(
            new Point(1, 2), "Up", SeabedSonar.firmSeabed().withSiltAt(new Point(1, 4), () -> 2));

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("(aa)"));

        assertEquals(crawler.canNotMoveOnSiltDuringGuardedRunErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 2), "Up"));
    }

    @Test
    void test50GuardedRunCanTurnOnSilt() {
        SurveyCrawler crawler = SurveyCrawler.atFacingWithSonar(
            new Point(1, 2), "Up", SeabedSonar.firmSeabed().withSiltAt(new Point(1, 2), () -> 2));

        crawler.process("(h)");

        assertTrue(crawler.isAtFacing(new Point(1, 2), "Right"));
    }

    @Test
    void test51GuardedRunUndoesItsMovementsWhenFindingAnInvalidCommand() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("(ax)"));

        assertEquals(crawler.invalidCommandErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 2), "Up"));
    }

    @Test
    void test52GuardedRunCanNotBeStartedInsideAGuardedRun() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("aa(aa(ht)a)"));

        assertEquals(crawler.canNotStartGuardedRunInsideGuardedRunErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 4), "Up"));
    }

    @Test
    void test53GuardedRunHasToBeFinished() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("a(aa"));

        assertEquals(crawler.unfinishedGuardedRunErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 3), "Up"));
    }

    @Test
    void test54GuardedRunCanNotBeEndedIfItWasNotStarted() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("a)"));

        assertEquals(crawler.notStartedGuardedRunErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 3), "Up"));
    }

    @Test
    void test55CrawlerCanBeUsedAfterAGuardedRunFails() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        assertThrows(RuntimeException.class, () -> crawler.process("(ax)"));
        crawler.process("a");

        assertTrue(crawler.isAtFacing(new Point(1, 3), "Up"));
    }

    @Test
    void test56ASequenceCanHaveMoreThanOneGuardedRun() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        crawler.process("aha(aagt3)aa(ht)");

        assertTrue(crawler.isAtFacing(new Point(3, -1), "Right"));
    }
}
