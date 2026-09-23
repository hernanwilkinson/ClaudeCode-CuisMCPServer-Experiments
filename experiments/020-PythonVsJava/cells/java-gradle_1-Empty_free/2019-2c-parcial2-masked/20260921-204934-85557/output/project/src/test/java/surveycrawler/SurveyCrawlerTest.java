package surveycrawler;

import org.junit.jupiter.api.Test;

import java.util.HashSet;
import java.util.Set;

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

    // ----------------------------------------------------------------------------------
    // Repeating the last command with a digit
    // ----------------------------------------------------------------------------------

    @Test
    void test17DigitRepeatsLastCommandTwoMoreTimesThanTheDigitValue() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        crawler.process("a0");

        assertTrue(crawler.isAtFacing(new Point(1, 5), "Up"));
    }

    @Test
    void test18DigitOneRepeatsLastCommandThreeMoreTimes() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        crawler.process("a1");

        assertTrue(crawler.isAtFacing(new Point(1, 6), "Up"));
    }

    @Test
    void test19DigitNineRepeatsLastCommandElevenMoreTimes() {
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
    void test23MoreThanOneCommandCanBeRepeated() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        crawler.process("a0h0");

        assertTrue(crawler.isAtFacing(new Point(1, 5), "Left"));
    }

    @Test
    void test24ADigitWithoutAPreviousCommandIsInvalid() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("0"));

        assertEquals(crawler.invalidCommandErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 2), "Up"));
    }

    @Test
    void test25OnlyOneDigitCanFollowACommand() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("a00"));

        assertEquals(crawler.invalidCommandErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 5), "Up"));
    }

    @Test
    void test26LastCommandIsNotRememberedBetweenCommandSequences() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        crawler.process("a");
        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("0"));

        assertEquals(crawler.invalidCommandErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 3), "Up"));
    }

    @Test
    void test27ADigitCanNotRepeatTheStartOfAGuardedRun() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("(0)"));

        assertEquals(crawler.invalidCommandErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 2), "Up"));
    }

    @Test
    void test28ADigitCanNotRepeatTheEndOfAGuardedRun() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("(a)0"));

        assertEquals(crawler.invalidCommandErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 3), "Up"));
    }

    // ----------------------------------------------------------------------------------
    // Boulders
    // ----------------------------------------------------------------------------------

    @Test
    void test29CanNotAdvanceOntoABoulder() {
        SurveyCrawler crawler = crawlerAtOneTwoFacingUpWith(new Boulder(), new Point(1, 3));

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("a"));

        assertEquals(Boulder.boulderFoundErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 2), "Up"));
    }

    @Test
    void test30CanNotRetreatOntoABoulder() {
        SurveyCrawler crawler = crawlerAtOneTwoFacingUpWith(new Boulder(), new Point(1, 1));

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("t"));

        assertEquals(Boulder.boulderFoundErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 2), "Up"));
    }

    @Test
    void test31CanNotTurnClockwiseWhenStandingOnABoulder() {
        SurveyCrawler crawler = crawlerAtOneTwoFacingUpWith(new Boulder(), new Point(1, 2));

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("h"));

        assertEquals(Boulder.boulderFoundErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 2), "Up"));
    }

    @Test
    void test32CanNotTurnCounterClockwiseWhenStandingOnABoulder() {
        SurveyCrawler crawler = crawlerAtOneTwoFacingUpWith(new Boulder(), new Point(1, 2));

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("g"));

        assertEquals(Boulder.boulderFoundErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 2), "Up"));
    }

    @Test
    void test33CommandsBeforeFindingABoulderAreNotUndoneOutOfAGuardedRun() {
        SurveyCrawler crawler = crawlerAtOneTwoFacingUpWith(new Boulder(), new Point(1, 4));

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("aa"));

        assertEquals(Boulder.boulderFoundErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 3), "Up"));
    }

    @Test
    void test34CrawlerKeepsWorkingAfterFindingABoulder() {
        SurveyCrawler crawler = crawlerAtOneTwoFacingUpWith(new Boulder(), new Point(1, 3));

        assertThrows(RuntimeException.class, () -> crawler.process("a"));
        crawler.process("ha");

        assertTrue(crawler.isAtFacing(new Point(2, 2), "Right"));
    }

    // ----------------------------------------------------------------------------------
    // Silt
    // ----------------------------------------------------------------------------------

    @Test
    void test35WhenAdvancingOntoSiltTheCrawlerSlidesTheSlidedCells() {
        SurveyCrawler crawler = crawlerAtOneTwoFacingUpWith(new Silt(() -> 4), new Point(1, 3));

        crawler.process("a");

        assertTrue(crawler.isAtFacing(new Point(1, 6), "Up"));
    }

    @Test
    void test36SiltCanStopTheCrawlerAtTheExpectedPosition() {
        SurveyCrawler crawler = crawlerAtOneTwoFacingUpWith(new Silt(() -> 1), new Point(1, 3));

        crawler.process("a");

        assertTrue(crawler.isAtFacing(new Point(1, 3), "Up"));
    }

    @Test
    void test37SiltCanNotSlideTheCrawlerMoreThanItsLimit() {
        SurveyCrawler crawler = crawlerAtOneTwoFacingUpWith(new Silt(() -> Silt.slideCellsLimit()), new Point(1, 3));

        crawler.process("a");

        assertTrue(crawler.isAtFacing(new Point(1, 12), "Up"));
    }

    @Test
    void test38WhenRetreatingOntoSiltTheCrawlerSlidesBackwards() {
        SurveyCrawler crawler = crawlerAtOneTwoFacingUpWith(new Silt(() -> 3), new Point(1, 1));

        crawler.process("t");

        assertTrue(crawler.isAtFacing(new Point(1, -1), "Up"));
    }

    @Test
    void test39SiltDoesNotAffectTurning() {
        SurveyCrawler crawler = crawlerAtOneTwoFacingUpWith(new Silt(() -> 5), new Point(1, 2));

        crawler.process("h");

        assertTrue(crawler.isAtFacing(new Point(1, 2), "Right"));
    }

    @Test
    void test40RandomSiltAlwaysSlidesTheCrawlerWithinItsLimit() {
        Set<Point> reachedPositions = new HashSet<>();

        for (int i = 1; i <= 1000; i++) {
            SurveyCrawler crawler = crawlerAtOneTwoFacingUpWith(new Silt(), new Point(1, 3));
            crawler.process("a");
            Point reachedPosition = firstPositionWhereCrawlerIs(crawler, 3, 2 + Silt.slideCellsLimit());
            reachedPositions.add(reachedPosition);
        }

        assertEquals(Silt.slideCellsLimit(), reachedPositions.size());
    }

    // ----------------------------------------------------------------------------------
    // Guarded runs
    // ----------------------------------------------------------------------------------

    @Test
    void test41CommandsOfASuccessfulGuardedRunAreNotUndone() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        crawler.process("(aah)");

        assertTrue(crawler.isAtFacing(new Point(1, 4), "Right"));
    }

    @Test
    void test42MovementsOfAGuardedRunAreUndoneWhenABoulderIsFound() {
        SurveyCrawler crawler = crawlerAtOneTwoFacingUpWith(new Boulder(), new Point(1, 4));

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("(aa)"));

        assertEquals(Boulder.boulderFoundErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 2), "Up"));
    }

    @Test
    void test43TurnsOfAGuardedRunAreAlsoUndone() {
        SurveyCrawler crawler = crawlerAtOneTwoFacingUpWith(new Boulder(), new Point(3, 3));

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("(ahaa)"));

        assertEquals(Boulder.boulderFoundErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 2), "Up"));
    }

    @Test
    void test44CommandsBeforeAGuardedRunAreNotUndone() {
        SurveyCrawler crawler = crawlerAtOneTwoFacingUpWith(new Boulder(), new Point(1, 5));

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("a(aa)"));

        assertEquals(Boulder.boulderFoundErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 3), "Up"));
    }

    @Test
    void test45CanNotMoveOntoSiltDuringAGuardedRun() {
        SurveyCrawler crawler = crawlerAtOneTwoFacingUpWith(new Silt(() -> 3), new Point(1, 4));

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("(aa)"));

        assertEquals(Silt.unpredictableGroundErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 2), "Up"));
    }

    @Test
    void test46SiltDoesNotAffectTurningDuringAGuardedRun() {
        SurveyCrawler crawler = crawlerAtOneTwoFacingUpWith(new Silt(() -> 3), new Point(1, 2));

        crawler.process("(h)");

        assertTrue(crawler.isAtFacing(new Point(1, 2), "Right"));
    }

    @Test
    void test47InvalidCommandsDuringAGuardedRunUndoTheMovementsMade() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("(aax)"));

        assertEquals(crawler.invalidCommandErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 2), "Up"));
    }

    @Test
    void test48CanNotStartAGuardedRunDuringAGuardedRun() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("aa(aa(ht)a)"));

        assertEquals(GuardedRun.guardedRunAlreadyStartedErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 4), "Up"));
    }

    @Test
    void test49GuardedRunsHaveToBeFinished() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("a(aa"));

        assertEquals(GuardedRun.unfinishedGuardedRunErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 3), "Up"));
    }

    @Test
    void test50AGuardedRunCanNotBeFinishedWhenItWasNotStarted() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("a)"));

        assertEquals(crawler.invalidCommandErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 3), "Up"));
    }

    @Test
    void test51OnlyTheFailingGuardedRunIsUndone() {
        SurveyCrawler crawler = crawlerAtOneTwoFacingUpWith(new Boulder(), new Point(1, 6));

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("(aa)(aa)"));

        assertEquals(Boulder.boulderFoundErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 4), "Up"));
    }

    @Test
    void test52CommandsAfterAGuardedRunAreNotUndone() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("(aa)ax"));

        assertEquals(crawler.invalidCommandErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 5), "Up"));
    }

    @Test
    void test53RepeatedCommandsOfAGuardedRunAreAlsoUndone() {
        SurveyCrawler crawler = crawlerAtOneTwoFacingUpWith(new Boulder(), new Point(1, 6));

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("(a3)"));

        assertEquals(Boulder.boulderFoundErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 2), "Up"));
    }

    @Test
    void test54CommandsCanBeRepeatedDuringAGuardedRun() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        crawler.process("(a0)");

        assertTrue(crawler.isAtFacing(new Point(1, 5), "Up"));
    }

    @Test
    void test55CanNotTurnDuringAGuardedRunWhenStandingOnABoulder() {
        SurveyCrawler crawler = crawlerAtOneTwoFacingUpWith(new Boulder(), new Point(1, 2));

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("(h)"));

        assertEquals(Boulder.boulderFoundErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 2), "Up"));
    }

    @Test
    void test56CrawlerKeepsWorkingAfterAFailedGuardedRun() {
        SurveyCrawler crawler = crawlerAtOneTwoFacingUpWith(new Boulder(), new Point(1, 4));

        assertThrows(RuntimeException.class, () -> crawler.process("(aa)"));
        crawler.process("a");

        assertTrue(crawler.isAtFacing(new Point(1, 3), "Up"));
    }

    @Test
    void test57ASequenceCanHaveMoreThanOneGuardedRun() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        crawler.process("aha(aagt3)aa(ht)");

        assertTrue(crawler.isAtFacing(new Point(3, -1), "Right"));
    }

    // ----------------------------------------------------------------------------------
    // Test support
    // ----------------------------------------------------------------------------------

    private SurveyCrawler crawlerAtOneTwoFacingUpWith(SeabedGround aGround, Point aPosition) {
        return SurveyCrawler.atFacingWithSonar(
            new Point(1, 2),
            "Up",
            new SeabedMapSonar().withGroundAt(aGround, aPosition));
    }

    private Point firstPositionWhereCrawlerIs(SurveyCrawler crawler, int aFirstY, int aLastY) {
        for (int y = aFirstY; y <= aLastY; y++) {
            Point aPosition = new Point(1, y);
            if (crawler.isAtFacing(aPosition, "Up")) {
                return aPosition;
            }
        }
        throw new AssertionError("The crawler slid out of the silt limit");
    }
}
