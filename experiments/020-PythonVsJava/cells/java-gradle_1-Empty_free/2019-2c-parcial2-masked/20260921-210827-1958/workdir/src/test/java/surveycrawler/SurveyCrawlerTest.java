package surveycrawler;

import org.junit.jupiter.api.Test;

import java.util.HashSet;
import java.util.Random;
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

    // repeated commands

    @Test
    void test17DigitRepeatsTheLastCommandTwoMoreTimesThanTheDigit() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        crawler.process("a0");

        assertTrue(crawler.isAtFacing(new Point(1, 5), "Up"));
    }

    @Test
    void test18DigitOneRepeatsTheLastCommandFourTimes() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        crawler.process("a1");

        assertTrue(crawler.isAtFacing(new Point(1, 6), "Up"));
    }

    @Test
    void test19DigitNineRepeatsTheLastCommandElevenTimes() {
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
    void test23TurningFourTimesLeavesTheCrawlerFacingTheSameDirection() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        crawler.process("h1");

        assertTrue(crawler.isAtFacing(new Point(1, 2), "Up"));
    }

    @Test
    void test24MoreThanOneRepetitionCanBeUsedInASequence() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        crawler.process("a0h0a0");

        assertTrue(crawler.isAtFacing(new Point(-2, 5), "Left"));
    }

    @Test
    void test25CommandsAfterARepetitionAreProcessedNormally() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        crawler.process("h0a");

        assertTrue(crawler.isAtFacing(new Point(0, 2), "Left"));
    }

    @Test
    void test26ADigitWithoutAPreviousCommandIsInvalid() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("0"));

        assertEquals(crawler.invalidCommandErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 2), "Up"));
    }

    @Test
    void test27RepetitionCanNotBeAppliedToARepetition() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("a00"));

        assertEquals(crawler.invalidCommandErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 5), "Up"));
    }

    @Test
    void test28RepetitionCanNotBeAppliedToTheEndOfAGuardedRun() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("(a)0"));

        assertEquals(crawler.invalidCommandErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 3), "Up"));
    }

    // sonar - boulder

    @Test
    void test29CanNotAdvanceToABoulder() {
        SurveyCrawler crawler = crawlerFacingUpWith(new MappedGroundSonar().withBoulderAt(new Point(1, 3)));

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("a"));

        assertEquals(crawler.canNotMoveToBoulderErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 2), "Up"));
    }

    @Test
    void test30CanNotRetreatToABoulder() {
        SurveyCrawler crawler = crawlerFacingUpWith(new MappedGroundSonar().withBoulderAt(new Point(1, 1)));

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("t"));

        assertEquals(crawler.canNotMoveToBoulderErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 2), "Up"));
    }

    @Test
    void test31CanNotTurnCounterClockwiseWhenOnABoulder() {
        SurveyCrawler crawler = crawlerFacingUpWith(new MappedGroundSonar().withBoulderAt(new Point(1, 2)));

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("g"));

        assertEquals(crawler.canNotTurnOnBoulderErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 2), "Up"));
    }

    @Test
    void test32CanNotTurnClockwiseWhenOnABoulder() {
        SurveyCrawler crawler = crawlerFacingUpWith(new MappedGroundSonar().withBoulderAt(new Point(1, 2)));

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("h"));

        assertEquals(crawler.canNotTurnOnBoulderErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 2), "Up"));
    }

    @Test
    void test33ABoulderAheadDoesNotStopTheCrawlerFromTurning() {
        SurveyCrawler crawler = crawlerFacingUpWith(new MappedGroundSonar().withBoulderAt(new Point(1, 3)));

        crawler.process("h");

        assertTrue(crawler.isAtFacing(new Point(1, 2), "Right"));
    }

    @Test
    void test34ABoulderOutsideTheCrawlerPathDoesNotAffectItsMovement() {
        SurveyCrawler crawler = crawlerFacingUpWith(new MappedGroundSonar().withBoulderAt(new Point(2, 2)));

        crawler.process("a");

        assertTrue(crawler.isAtFacing(new Point(1, 3), "Up"));
    }

    @Test
    void test35MovementsBeforeFindingABoulderAreKeptWhenNotInAGuardedRun() {
        SurveyCrawler crawler = crawlerFacingUpWith(new MappedGroundSonar().withBoulderAt(new Point(1, 4)));

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("a0"));

        assertEquals(crawler.canNotMoveToBoulderErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 3), "Up"));
    }

    // sonar - firm sand

    @Test
    void test36MovementOnFirmSandIsTheNormalOne() {
        SurveyCrawler crawler = crawlerFacingUpWith(new MappedGroundSonar().withFirmSandAt(new Point(1, 3)));

        crawler.process("a");

        assertTrue(crawler.isAtFacing(new Point(1, 3), "Up"));
    }

    @Test
    void test37GroundNotSurveyedByTheSonarIsFirmSand() {
        CrawlerSonar sonar = new MappedGroundSonar().withBoulderAt(new Point(5, 5));

        assertTrue(sonar.groundAt(new Point(1, 3)) instanceof FirmSandGround);
        assertTrue(sonar.groundAt(new Point(5, 5)) instanceof BoulderGround);
    }

    // sonar - silt

    @Test
    void test38SlidesAtLeastOneCellWhenAdvancingToSilt() {
        SurveyCrawler crawler = crawlerFacingUpSlidingWith(
            new MappedGroundSonar().withSiltAt(new Point(1, 3)), 0);

        crawler.process("a");

        assertTrue(crawler.isAtFacing(new Point(1, 3), "Up"));
    }

    @Test
    void test39SlidesAtMostTenCellsWhenAdvancingToSilt() {
        SurveyCrawler crawler = crawlerFacingUpSlidingWith(
            new MappedGroundSonar().withSiltAt(new Point(1, 3)), SurveyCrawler.siltSlideLimit() - 1);

        crawler.process("a");

        assertTrue(crawler.isAtFacing(new Point(1, 12), "Up"));
    }

    @Test
    void test40SlidesInTheDirectionItWasGoingWhenAdvancingToSilt() {
        SurveyCrawler crawler = SurveyCrawler.atFacingSonarSlidingWith(
            new Point(1, 2), "Right", new MappedGroundSonar().withSiltAt(new Point(2, 2)), randomAlwaysReturning(3));

        crawler.process("a");

        assertTrue(crawler.isAtFacing(new Point(5, 2), "Right"));
    }

    @Test
    void test41SlidesBackwardsWhenRetreatingToSilt() {
        SurveyCrawler crawler = crawlerFacingUpSlidingWith(
            new MappedGroundSonar().withSiltAt(new Point(1, 1)), SurveyCrawler.siltSlideLimit() - 1);

        crawler.process("t");

        assertTrue(crawler.isAtFacing(new Point(1, -8), "Up"));
    }

    @Test
    void test42SiltDoesNotAffectTurning() {
        SurveyCrawler crawler = crawlerFacingUpWith(new MappedGroundSonar().withSiltAt(new Point(1, 2)));

        crawler.process("h");

        assertTrue(crawler.isAtFacing(new Point(1, 2), "Right"));
    }

    @Test
    void test43SlidingOnSiltIsUnpredictableButAlwaysWithinTheSlidingLimit() {
        Set<Integer> reachedHeights = new HashSet<>();

        for (int attempt = 1; attempt <= 500; attempt++) {
            SurveyCrawler crawler = SurveyCrawler.atFacingSonar(
                new Point(1, 2), "Up", new MappedGroundSonar().withSiltAt(new Point(1, 3)));

            crawler.process("a");

            int height = firstHeightWhereItIs(crawler);
            assertTrue(height >= 3 && height <= 3 + SurveyCrawler.siltSlideLimit() - 1);
            reachedHeights.add(height);
        }

        assertTrue(reachedHeights.size() > 1);
    }

    @Test
    void test44OnlyTheGroundOfTheDestinationAffectsTheMovement() {
        SurveyCrawler crawler = crawlerFacingUpSlidingWith(
            new MappedGroundSonar().withSiltAt(new Point(1, 3)), 0);

        crawler.process("a0");

        assertTrue(crawler.isAtFacing(new Point(1, 5), "Up"));
    }

    // guarded run

    @Test
    void test45CommandsOfAGuardedRunAreProcessedWhenThereAreNoProblems() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        crawler.process("(aa)");

        assertTrue(crawler.isAtFacing(new Point(1, 4), "Up"));
    }

    @Test
    void test46AnEmptyGuardedRunDoesNothing() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        crawler.process("()");

        assertTrue(crawler.isAtFacing(new Point(1, 2), "Up"));
    }

    @Test
    void test47CommandsBeforeAndAfterAGuardedRunAreProcessed() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        crawler.process("a(ah)a");

        assertTrue(crawler.isAtFacing(new Point(2, 4), "Right"));
    }

    @Test
    void test48RepetitionsCanBeUsedInsideAGuardedRun() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        crawler.process("(a0)");

        assertTrue(crawler.isAtFacing(new Point(1, 5), "Up"));
    }

    @Test
    void test49MoreThanOneGuardedRunCanBeUsedInASequence() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        crawler.process("aha(aagt3)aa(ht)");

        assertTrue(crawler.isAtFacing(new Point(3, -1), "Right"));
    }

    @Test
    void test50AGuardedRunUndoesItsMovementsWhenItFindsABoulder() {
        SurveyCrawler crawler = crawlerFacingUpWith(new MappedGroundSonar().withBoulderAt(new Point(1, 4)));

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("(aa)"));

        assertEquals(crawler.canNotMoveToBoulderErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 2), "Up"));
    }

    @Test
    void test51AGuardedRunUndoesItsTurnsToo() {
        SurveyCrawler crawler = crawlerFacingUpWith(new MappedGroundSonar().withBoulderAt(new Point(2, 3)));

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("(aha)"));

        assertEquals(crawler.canNotMoveToBoulderErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 2), "Up"));
    }

    @Test
    void test52AGuardedRunUndoesTheMovementsOfARepetitionToo() {
        SurveyCrawler crawler = crawlerFacingUpWith(new MappedGroundSonar().withBoulderAt(new Point(1, 5)));

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("(a0)"));

        assertEquals(crawler.canNotMoveToBoulderErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 2), "Up"));
    }

    @Test
    void test53CanNotTurnOnABoulderDuringAGuardedRun() {
        SurveyCrawler crawler = crawlerFacingUpWith(new MappedGroundSonar().withBoulderAt(new Point(1, 2)));

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("(h)"));

        assertEquals(crawler.canNotTurnOnBoulderErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 2), "Up"));
    }

    @Test
    void test54CanNotMoveOnSiltDuringAGuardedRun() {
        SurveyCrawler crawler = crawlerFacingUpWith(new MappedGroundSonar().withSiltAt(new Point(1, 3)));

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("(a)"));

        assertEquals(crawler.canNotMoveOnSiltDuringGuardedRunErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 2), "Up"));
    }

    @Test
    void test55AGuardedRunUndoesItsMovementsWhenItFindsSilt() {
        SurveyCrawler crawler = crawlerFacingUpWith(new MappedGroundSonar().withSiltAt(new Point(1, 4)));

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("(aa)"));

        assertEquals(crawler.canNotMoveOnSiltDuringGuardedRunErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 2), "Up"));
    }

    @Test
    void test56SiltDoesNotAffectTurningDuringAGuardedRun() {
        SurveyCrawler crawler = crawlerFacingUpWith(new MappedGroundSonar().withSiltAt(new Point(1, 2)));

        crawler.process("(h)");

        assertTrue(crawler.isAtFacing(new Point(1, 2), "Right"));
    }

    @Test
    void test57AGuardedRunUndoesItsMovementsWhenItFindsAnInvalidCommand() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("(ahx)"));

        assertEquals(crawler.invalidCommandErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 2), "Up"));
    }

    @Test
    void test58AGuardedRunUndoesItsMovementsWhenItFindsAnInvalidRepetition() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("(0)"));

        assertEquals(crawler.invalidCommandErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 2), "Up"));
    }

    @Test
    void test59AGuardedRunCanNotBeStartedDuringAGuardedRun() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("aa(aa(ht)a)"));

        assertEquals(crawler.canNotStartGuardedRunDuringGuardedRunErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 4), "Up"));
    }

    @Test
    void test60AGuardedRunHasToBeFinished() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("a(aa"));

        assertEquals(crawler.unfinishedGuardedRunErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 3), "Up"));
    }

    @Test
    void test61AGuardedRunCanNotBeEndedWithoutHavingBeenStarted() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("a)"));

        assertEquals(crawler.invalidCommandErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 3), "Up"));
    }

    @Test
    void test62OnlyTheMovementsOfTheFailingGuardedRunAreUndone() {
        SurveyCrawler crawler = SurveyCrawler.atFacing(new Point(1, 2), "Up");

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("aa(aa)(ax)"));

        assertEquals(crawler.invalidCommandErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 6), "Up"));
    }

    @Test
    void test63TheCrawlerCanKeepWorkingAfterAFailedGuardedRun() {
        SurveyCrawler crawler = crawlerFacingUpWith(new MappedGroundSonar().withBoulderAt(new Point(1, 4)));

        assertThrows(RuntimeException.class, () -> crawler.process("(aa)"));
        crawler.process("a");
        crawler.process("(h)");

        assertTrue(crawler.isAtFacing(new Point(1, 3), "Right"));
    }

    @Test
    void test64MovementsMadeBeforeAFailedGuardedRunAreNotUndone() {
        SurveyCrawler crawler = crawlerFacingUpWith(new MappedGroundSonar().withBoulderAt(new Point(1, 5)));

        RuntimeException anError = assertThrows(RuntimeException.class, () -> crawler.process("aa(aa)"));

        assertEquals(crawler.canNotMoveToBoulderErrorDescription(), anError.getMessage());
        assertTrue(crawler.isAtFacing(new Point(1, 4), "Up"));
    }

    // test support

    private SurveyCrawler crawlerFacingUpWith(CrawlerSonar aSonar) {
        return SurveyCrawler.atFacingSonar(new Point(1, 2), "Up", aSonar);
    }

    private SurveyCrawler crawlerFacingUpSlidingWith(CrawlerSonar aSonar, int aNumberOfCellsToSlideMinusOne) {
        return SurveyCrawler.atFacingSonarSlidingWith(
            new Point(1, 2), "Up", aSonar, randomAlwaysReturning(aNumberOfCellsToSlideMinusOne));
    }

    private Random randomAlwaysReturning(int aNumber) {
        return new Random() {
            @Override
            public int nextInt(int aLimit) {
                return aNumber;
            }
        };
    }

    private int firstHeightWhereItIs(SurveyCrawler aCrawler) {
        for (int height = 3; height <= 3 + SurveyCrawler.siltSlideLimit(); height++) {
            if (aCrawler.isAtFacing(new Point(1, height), "Up")) {
                return height;
            }
        }
        return -1;
    }
}
