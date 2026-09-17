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

    // repetition

    @Test
    void test17DigitRepeatsLastCommandDigitPlusTwoTimes() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        crawler.process("a0");

        assertTrue(crawler.isAtFacing(new Point(1, 5), "Up"));
    }

    @Test
    void test18RepetitionWorksWithRetreat() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        crawler.process("t3");

        assertTrue(crawler.isAtFacing(new Point(1, -4), "Up"));
    }

    @Test
    void test19RepetitionWorksWithTurns() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        crawler.process("h0");

        assertTrue(crawler.isAtFacing(new Point(1, 2), "Left"));

        crawler.process("g1");

        assertTrue(crawler.isAtFacing(new Point(1, 2), "Left"));
    }

    @Test
    void test20RepetitionWithNineRepeatsElevenTimes() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Right");

        crawler.process("a9");

        assertTrue(crawler.isAtFacing(new Point(13, 2), "Right"));
    }

    @Test
    void test21RepetitionOnlyAppliesToThePreviousCommand() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        crawler.process("ha0");

        assertTrue(crawler.isAtFacing(new Point(4, 2), "Right"));
    }

    @Test
    void test22DigitAtTheBeginningIsAnInvalidCommand() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("3a"));

        assertEquals(crawler.invalidCommandErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 2), "Up"));
    }

    @Test
    void test23RepetitionIsASingleDigit() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("a10"));

        assertEquals(crawler.invalidCommandErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 6), "Up"));
    }

    @Test
    void test24GuardedRunDelimitersCanNotBeRepeated() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("(a)2"));

        assertEquals(crawler.invalidCommandErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 3), "Up"));
    }

    @Test
    void test25CanNotRepeatAnInvalidCommand() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("a(1a)"));

        assertEquals(crawler.invalidCommandErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 3), "Up"));
    }

    // boulder

    @Test
    void test26CanNotAdvanceOntoABoulder() {
        SurveyCrawler crawler = SurveyCrawler.atFacingWith(new Point(1, 2), "Up",
            new SimulatedSonar().withBoulderAt(new Point(1, 3)));

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("a"));

        assertEquals(crawler.boulderFoundErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 2), "Up"));
    }

    @Test
    void test27CanNotRetreatOntoABoulder() {
        SurveyCrawler crawler = SurveyCrawler.atFacingWith(new Point(1, 2), "Left",
            new SimulatedSonar().withBoulderAt(new Point(2, 2)));

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("t"));

        assertEquals(crawler.boulderFoundErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 2), "Left"));
    }

    @Test
    void test28CanNotTurnCounterClockwiseOnABoulder() {
        SurveyCrawler crawler = SurveyCrawler.atFacingWith(new Point(1, 2), "Up",
            new SimulatedSonar().withBoulderAt(new Point(1, 2)));

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("g"));

        assertEquals(crawler.boulderFoundErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 2), "Up"));
    }

    @Test
    void test29CanNotTurnClockwiseOnABoulder() {
        SurveyCrawler crawler = SurveyCrawler.atFacingWith(new Point(1, 2), "Up",
            new SimulatedSonar().withBoulderAt(new Point(1, 2)));

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("h"));

        assertEquals(crawler.boulderFoundErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 2), "Up"));
    }

    @Test
    void test30RepetitionStopsAtABoulder() {
        SurveyCrawler crawler = SurveyCrawler.atFacingWith(new Point(1, 2), "Up",
            new SimulatedSonar().withBoulderAt(new Point(1, 5)));

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("a3"));

        assertEquals(crawler.boulderFoundErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 4), "Up"));
    }

    // silt

    @Test
    void test31AdvancingOntoSiltSlidesTheRandomNumberOfCells() {
        SurveyCrawler crawler = SurveyCrawler.atFacingWith(new Point(1, 2), "Up",
            new SimulatedSonar().withSiltAt(new Point(1, 3)), new FixedRandom(3));

        crawler.process("a");

        assertTrue(crawler.isAtFacing(new Point(1, 6), "Up"));
    }

    @Test
    void test32SlidingOnSiltIsAtLeastOneCell() {
        SurveyCrawler crawler = SurveyCrawler.atFacingWith(new Point(1, 2), "Up",
            new SimulatedSonar().withSiltAt(new Point(1, 3)), new FixedRandom(0));

        crawler.process("a");

        assertTrue(crawler.isAtFacing(new Point(1, 3), "Up"));
    }

    @Test
    void test33SlidingOnSiltIsAtMostTenCells() {
        SurveyCrawler crawler = SurveyCrawler.atFacingWith(new Point(1, 2), "Up",
            new SimulatedSonar().withSiltAt(new Point(1, 3)), new FixedRandom(9));

        crawler.process("a");

        assertTrue(crawler.isAtFacing(new Point(1, 12), "Up"));
    }

    @Test
    void test34SlidingOnSiltWithARealRandomEndsWithinTheLimit() {
        for (int attempt = 0; attempt < 100; attempt++) {
            SurveyCrawler crawler = SurveyCrawler.atFacingWith(new Point(1, 2), "Up",
                new SimulatedSonar().withSiltAt(new Point(1, 3)));

            crawler.process("a");

            boolean endedWithinLimit = false;
            for (int y = 3; y <= 12; y++) {
                endedWithinLimit = endedWithinLimit || crawler.isAtFacing(new Point(1, y), "Up");
            }
            assertTrue(endedWithinLimit);
        }
    }

    @Test
    void test35RetreatingOntoSiltSlidesBackwards() {
        SurveyCrawler crawler = SurveyCrawler.atFacingWith(new Point(1, 2), "Right",
            new SimulatedSonar().withSiltAt(new Point(0, 2)), new FixedRandom(2));

        crawler.process("t");

        assertTrue(crawler.isAtFacing(new Point(-2, 2), "Right"));
    }

    @Test
    void test36SiltDoesNotAffectTurning() {
        SurveyCrawler crawler = SurveyCrawler.atFacingWith(new Point(1, 2), "Up",
            new SimulatedSonar().withSiltAt(new Point(1, 2)));

        crawler.process("hg");

        assertTrue(crawler.isAtFacing(new Point(1, 2), "Up"));
    }

    @Test
    void test37SlidingStopsBeforeABoulder() {
        SurveyCrawler crawler = SurveyCrawler.atFacingWith(new Point(1, 2), "Up",
            new SimulatedSonar().withSiltAt(new Point(1, 3)).withBoulderAt(new Point(1, 6)), new FixedRandom(9));

        crawler.process("a");

        assertTrue(crawler.isAtFacing(new Point(1, 5), "Up"));
    }

    // guarded run

    @Test
    void test38GuardedRunWithoutProblemsProcessesItsCommands() {
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
    void test40BoulderInGuardedRunReturnsToInitialPosition() {
        SurveyCrawler crawler = SurveyCrawler.atFacingWith(new Point(1, 2), "Up",
            new SimulatedSonar().withBoulderAt(new Point(1, 4)));

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("(aa)"));

        assertEquals(crawler.boulderFoundErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 2), "Up"));
    }

    @Test
    void test41GuardedRunUndoesTurnsAndMovementsInAnyDirection() {
        SurveyCrawler crawler = SurveyCrawler.atFacingWith(new Point(1, 2), "Up",
            new SimulatedSonar().withBoulderAt(new Point(4, 3)));

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("(a0hta1haa)"));

        assertEquals(crawler.boulderFoundErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 2), "Up"));
    }

    @Test
    void test42GuardedRunOnlyUndoesMovementsDoneInsideIt() {
        SurveyCrawler crawler = SurveyCrawler.atFacingWith(new Point(1, 2), "Up",
            new SimulatedSonar().withBoulderAt(new Point(2, 4)));

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("aah(aa)"));

        assertEquals(crawler.boulderFoundErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 4), "Right"));
    }

    @Test
    void test43SiltInGuardedRunReturnsToInitialPosition() {
        SurveyCrawler crawler = SurveyCrawler.atFacingWith(new Point(1, 2), "Up",
            new SimulatedSonar().withSiltAt(new Point(2, 3)), new FixedRandom(5));

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("(aha)"));

        assertEquals(crawler.siltFoundInGuardedRunErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 2), "Up"));
    }

    @Test
    void test44InvalidCommandInGuardedRunReturnsToInitialPosition() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("(ahax)"));

        assertEquals(crawler.invalidCommandErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 2), "Up"));
    }

    @Test
    void test45InvalidRepetitionInGuardedRunReturnsToInitialPosition() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("(a22)"));

        assertEquals(crawler.invalidCommandErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 2), "Up"));
    }

    @Test
    void test46SeveralGuardedRunsCanBeProcessed() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        crawler.process("aha(aagt3)aa(ht)");

        assertTrue(crawler.isAtFacing(new Point(3, -1), "Right"));
    }

    @Test
    void test47FailingSecondGuardedRunDoesNotUndoTheFirstOne() {
        SurveyCrawler crawler = SurveyCrawler.atFacingWith(new Point(1, 2), "Up",
            new SimulatedSonar().withBoulderAt(new Point(1, 6)));

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("(aa)(aa)"));

        assertEquals(crawler.boulderFoundErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 4), "Up"));
    }

    @Test
    void test48CanNotStartAGuardedRunInsideAnotherOne() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("aa(aa(ht)a)"));

        assertEquals(crawler.nestedGuardedRunErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 4), "Up"));
    }

    @Test
    void test49GuardedRunMustBeFinished() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("a(aa"));

        assertEquals(crawler.unfinishedGuardedRunErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 3), "Up"));
    }

    @Test
    void test50CanNotFinishAGuardedRunThatWasNotStarted() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("a)a"));

        assertEquals(crawler.guardedRunNotStartedErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 3), "Up"));
    }

    @Test
    void test51AfterAFailedGuardedRunTheCrawlerIsNotGuarded() {
        SurveyCrawler crawler = SurveyCrawler.atFacingWith(new Point(1, 2), "Up",
            new SimulatedSonar().withBoulderAt(new Point(1, 4)).withSiltAt(new Point(1, 1)), new FixedRandom(1));

        assertThrows(RuntimeException.class, () -> crawler.process("(aa)"));
        crawler.process("t");

        assertTrue(crawler.isAtFacing(new Point(1, 0), "Up"));
    }

    @Test
    void test52AnUnfinishedGuardedRunDoesNotLeakIntoTheNextProcess() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        assertThrows(RuntimeException.class, () -> crawler.process("(a"));
        crawler.process("(a)");

        assertTrue(crawler.isAtFacing(new Point(1, 3), "Up"));
    }

    @Test
    void test53UndoingDoesNotSlideWhenPassingOverSilt() {
        SurveyCrawler crawler = SurveyCrawler.atFacingWith(new Point(1, 2), "Up",
            new SimulatedSonar().withSiltAt(new Point(1, 2)).withBoulderAt(new Point(1, 5)), new FixedRandom(9));

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("(a2)"));

        assertEquals(crawler.boulderFoundErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 2), "Up"));
    }
}
