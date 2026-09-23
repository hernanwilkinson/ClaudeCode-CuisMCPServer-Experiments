import pytest

from surveycrawler.boulder import Boulder
from surveycrawler.firm_sand import FirmSand
from surveycrawler.point import Point
from surveycrawler.silt import Silt
from surveycrawler.sonar import Sonar
from surveycrawler.survey_crawler import SurveyCrawler


class SonarSimulator(Sonar):
    """A sonar for a seabed that is firm sand except at the given positions."""

    def __init__(self, grounds_by_position):
        self._grounds_by_position = grounds_by_position

    def ground_at(self, a_position):
        return self._grounds_by_position.get(a_position, FirmSand())


class RandomSimulator:
    """Answers always the same number, so the sliding on silt becomes predictable."""

    def __init__(self, a_number):
        self._number = a_number

    def randrange(self, a_limit):
        assert self._number < a_limit
        return self._number


def silt_sliding(a_distance):
    return Silt(RandomSimulator(a_distance - 1))


class SurveyCrawlerTest:

    def test01_empty_command_string_does_nothing(self):
        crawler = SurveyCrawler.at_facing(Point(1, 2), "Up")

        crawler.process("")

        assert crawler.is_at_facing(Point(1, 2), "Up")

    def test02a_when_facing_up_increments_y(self):
        crawler = SurveyCrawler.at_facing(Point(1, 2), "Up")

        crawler.process("a")

        assert crawler.is_at_facing(Point(1, 3), "Up")

    def test03t_when_facing_up_decrements_y(self):
        crawler = SurveyCrawler.at_facing(Point(1, 2), "Up")

        crawler.process("t")

        assert crawler.is_at_facing(Point(1, 1), "Up")

    def test04h_when_facing_up_makes_crawler_face_right(self):
        crawler = SurveyCrawler.at_facing(Point(1, 2), "Up")

        crawler.process("h")

        assert crawler.is_at_facing(Point(1, 2), "Right")

    def test05g_when_facing_up_makes_crawler_face_left(self):
        crawler = SurveyCrawler.at_facing(Point(1, 2), "Up")

        crawler.process("g")

        assert crawler.is_at_facing(Point(1, 2), "Left")

    def test06_invalid_commands_are_not_processed(self):
        crawler = SurveyCrawler.at_facing(Point(1, 2), "Up")

        with pytest.raises(RuntimeError) as an_error:
            crawler.process("x")

        assert crawler.invalid_command_error_description() == str(an_error.value)
        assert crawler.is_at_facing(Point(1, 2), "Up")

    def test07_more_than_one_command_are_processed_correctly(self):
        crawler = SurveyCrawler.at_facing(Point(1, 2), "Up")

        crawler.process("aa")

        assert crawler.is_at_facing(Point(1, 4), "Up")

    def test08a_when_facing_right_increments_x(self):
        crawler = SurveyCrawler.at_facing(Point(1, 2), "Right")

        crawler.process("a")

        assert crawler.is_at_facing(Point(2, 2), "Right")

    def test09t_when_facing_right_decrements_x(self):
        crawler = SurveyCrawler.at_facing(Point(1, 2), "Right")

        crawler.process("t")

        assert crawler.is_at_facing(Point(0, 2), "Right")

    def test10h_when_facing_right_makes_crawler_face_down(self):
        crawler = SurveyCrawler.at_facing(Point(1, 2), "Right")

        crawler.process("h")

        assert crawler.is_at_facing(Point(1, 2), "Down")

    def test11g_when_facing_right_makes_crawler_face_up(self):
        crawler = SurveyCrawler.at_facing(Point(1, 2), "Right")

        crawler.process("g")

        assert crawler.is_at_facing(Point(1, 2), "Up")

    def test12ath_are_processed_correctly_when_facing_down(self):
        crawler = SurveyCrawler.at_facing(Point(1, 2), "Down")

        crawler.process("aath")

        assert crawler.is_at_facing(Point(1, 1), "Left")

    def test13g_when_facing_down_makes_crawler_face_right(self):
        crawler = SurveyCrawler.at_facing(Point(1, 2), "Down")

        crawler.process("g")

        assert crawler.is_at_facing(Point(1, 2), "Right")

    def test14ath_are_processed_correctly_when_facing_left(self):
        crawler = SurveyCrawler.at_facing(Point(1, 2), "Left")

        crawler.process("aath")

        assert crawler.is_at_facing(Point(0, 2), "Up")

    def test15g_when_facing_left_makes_crawler_face_down(self):
        crawler = SurveyCrawler.at_facing(Point(1, 2), "Left")

        crawler.process("g")

        assert crawler.is_at_facing(Point(1, 2), "Down")

    def test16_can_not_create_a_crawler_with_an_invalid_facing(self):
        with pytest.raises(RuntimeError) as an_error:
            SurveyCrawler.at_facing(Point(1, 2), "X")

        assert SurveyCrawler.invalid_facing_error_description() == str(an_error.value)

    # repeating commands

    def test17_a_digit_repeats_the_last_command_two_times_plus_its_value(self):
        crawler = SurveyCrawler.at_facing(Point(1, 2), "Up")

        crawler.process("a0")

        assert crawler.is_at_facing(Point(1, 5), "Up")

    def test18_the_value_of_the_digit_is_added_to_the_repetitions(self):
        crawler = SurveyCrawler.at_facing(Point(1, 2), "Up")

        crawler.process("a1")

        assert crawler.is_at_facing(Point(1, 6), "Up")

    def test19_nine_is_the_largest_number_of_repetitions(self):
        crawler = SurveyCrawler.at_facing(Point(1, 2), "Up")

        crawler.process("a9")

        assert crawler.is_at_facing(Point(1, 14), "Up")

    def test20_retreat_can_be_repeated(self):
        crawler = SurveyCrawler.at_facing(Point(1, 2), "Up")

        crawler.process("t0")

        assert crawler.is_at_facing(Point(1, -1), "Up")

    def test21_turn_clockwise_can_be_repeated(self):
        crawler = SurveyCrawler.at_facing(Point(1, 2), "Up")

        crawler.process("h0")

        assert crawler.is_at_facing(Point(1, 2), "Left")

    def test22_turn_counter_clockwise_can_be_repeated(self):
        crawler = SurveyCrawler.at_facing(Point(1, 2), "Up")

        crawler.process("g0")

        assert crawler.is_at_facing(Point(1, 2), "Right")

    def test23_can_not_repeat_when_there_is_no_previous_command(self):
        crawler = SurveyCrawler.at_facing(Point(1, 2), "Up")

        with pytest.raises(RuntimeError) as an_error:
            crawler.process("0")

        assert SurveyCrawler.invalid_command_error_description() == str(an_error.value)
        assert crawler.is_at_facing(Point(1, 2), "Up")

    def test24_a_repetition_can_not_be_repeated(self):
        crawler = SurveyCrawler.at_facing(Point(1, 2), "Up")

        with pytest.raises(RuntimeError) as an_error:
            crawler.process("a00")

        assert SurveyCrawler.invalid_command_error_description() == str(an_error.value)
        assert crawler.is_at_facing(Point(1, 5), "Up")

    def test25_repetitions_are_mixed_with_other_commands(self):
        crawler = SurveyCrawler.at_facing(Point(1, 2), "Up")

        crawler.process("ah2a")

        assert crawler.is_at_facing(Point(2, 3), "Right")

    def test26_can_not_repeat_a_guarded_run(self):
        crawler = SurveyCrawler.at_facing(Point(1, 2), "Up")

        with pytest.raises(RuntimeError) as an_error:
            crawler.process("(a)0")

        assert SurveyCrawler.invalid_command_error_description() == str(an_error.value)
        assert crawler.is_at_facing(Point(1, 3), "Up")

    def test27_the_last_command_is_not_remembered_between_command_sequences(self):
        crawler = SurveyCrawler.at_facing(Point(1, 2), "Up")
        crawler.process("a")

        with pytest.raises(RuntimeError) as an_error:
            crawler.process("0")

        assert SurveyCrawler.invalid_command_error_description() == str(an_error.value)
        assert crawler.is_at_facing(Point(1, 3), "Up")

    # boulders

    def test28_can_not_advance_to_a_boulder(self):
        sonar = SonarSimulator({Point(1, 3): Boulder()})
        crawler = SurveyCrawler.at_facing_with_sonar(Point(1, 2), "Up", sonar)

        with pytest.raises(RuntimeError) as an_error:
            crawler.process("a")

        assert SurveyCrawler.can_not_move_over_boulder_error_description() == str(an_error.value)
        assert crawler.is_at_facing(Point(1, 2), "Up")

    def test29_can_not_retreat_to_a_boulder(self):
        sonar = SonarSimulator({Point(1, 1): Boulder()})
        crawler = SurveyCrawler.at_facing_with_sonar(Point(1, 2), "Up", sonar)

        with pytest.raises(RuntimeError) as an_error:
            crawler.process("t")

        assert SurveyCrawler.can_not_move_over_boulder_error_description() == str(an_error.value)
        assert crawler.is_at_facing(Point(1, 2), "Up")

    def test30_can_not_turn_counter_clockwise_when_over_a_boulder(self):
        sonar = SonarSimulator({Point(1, 2): Boulder()})
        crawler = SurveyCrawler.at_facing_with_sonar(Point(1, 2), "Up", sonar)

        with pytest.raises(RuntimeError) as an_error:
            crawler.process("g")

        assert SurveyCrawler.can_not_turn_over_boulder_error_description() == str(an_error.value)
        assert crawler.is_at_facing(Point(1, 2), "Up")

    def test31_can_not_turn_clockwise_when_over_a_boulder(self):
        sonar = SonarSimulator({Point(1, 2): Boulder()})
        crawler = SurveyCrawler.at_facing_with_sonar(Point(1, 2), "Up", sonar)

        with pytest.raises(RuntimeError) as an_error:
            crawler.process("h")

        assert SurveyCrawler.can_not_turn_over_boulder_error_description() == str(an_error.value)
        assert crawler.is_at_facing(Point(1, 2), "Up")

    def test32_can_move_away_from_a_boulder_it_is_standing_on(self):
        sonar = SonarSimulator({Point(1, 2): Boulder()})
        crawler = SurveyCrawler.at_facing_with_sonar(Point(1, 2), "Up", sonar)

        crawler.process("a")

        assert crawler.is_at_facing(Point(1, 3), "Up")

    def test33_commands_after_a_boulder_are_not_processed(self):
        sonar = SonarSimulator({Point(1, 4): Boulder()})
        crawler = SurveyCrawler.at_facing_with_sonar(Point(1, 2), "Up", sonar)

        with pytest.raises(RuntimeError) as an_error:
            crawler.process("aah")

        assert SurveyCrawler.can_not_move_over_boulder_error_description() == str(an_error.value)
        assert crawler.is_at_facing(Point(1, 3), "Up")

    # silt

    def test34_advancing_to_silt_slides_the_crawler(self):
        sonar = SonarSimulator({Point(1, 3): silt_sliding(4)})
        crawler = SurveyCrawler.at_facing_with_sonar(Point(1, 2), "Up", sonar)

        crawler.process("a")

        assert crawler.is_at_facing(Point(1, 6), "Up")

    def test35_sliding_the_minimum_distance_leaves_the_crawler_at_the_commanded_position(self):
        sonar = SonarSimulator({Point(1, 3): silt_sliding(1)})
        crawler = SurveyCrawler.at_facing_with_sonar(Point(1, 2), "Up", sonar)

        crawler.process("a")

        assert crawler.is_at_facing(Point(1, 3), "Up")

    def test36_the_sliding_limit_on_silt_is_ten_positions(self):
        sonar = SonarSimulator({Point(1, 3): silt_sliding(Silt.sliding_limit())})
        crawler = SurveyCrawler.at_facing_with_sonar(Point(1, 2), "Up", sonar)

        crawler.process("a")

        assert crawler.is_at_facing(Point(1, 12), "Up")

    def test37_retreating_to_silt_slides_the_crawler_backwards(self):
        sonar = SonarSimulator({Point(1, 1): silt_sliding(3)})
        crawler = SurveyCrawler.at_facing_with_sonar(Point(1, 2), "Up", sonar)

        crawler.process("t")

        assert crawler.is_at_facing(Point(1, -1), "Up")

    def test38_slides_in_the_direction_it_was_going(self):
        sonar = SonarSimulator({Point(2, 2): silt_sliding(5)})
        crawler = SurveyCrawler.at_facing_with_sonar(Point(1, 2), "Right", sonar)

        crawler.process("a")

        assert crawler.is_at_facing(Point(6, 2), "Right")

    def test39_silt_does_not_affect_turning(self):
        sonar = SonarSimulator({Point(1, 2): silt_sliding(5)})
        crawler = SurveyCrawler.at_facing_with_sonar(Point(1, 2), "Up", sonar)

        crawler.process("h0")

        assert crawler.is_at_facing(Point(1, 2), "Left")

    def test40_an_unpredictable_slide_is_always_within_the_sliding_limit(self):
        for _ in range(100):
            sonar = SonarSimulator({Point(1, 3): Silt()})
            crawler = SurveyCrawler.at_facing_with_sonar(Point(1, 2), "Up", sonar)

            crawler.process("a")

            assert any(crawler.is_at_facing(Point(1, 2 + a_distance), "Up")
                       for a_distance in range(1, Silt.sliding_limit() + 1))

    # guarded runs

    def test41_a_guarded_run_without_problems_keeps_what_the_crawler_did(self):
        crawler = SurveyCrawler.at_facing(Point(1, 2), "Up")

        crawler.process("(aah)")

        assert crawler.is_at_facing(Point(1, 4), "Right")

    def test42_an_empty_guarded_run_does_nothing(self):
        crawler = SurveyCrawler.at_facing(Point(1, 2), "Up")

        crawler.process("()")

        assert crawler.is_at_facing(Point(1, 2), "Up")

    def test43_a_guarded_run_returns_to_the_initial_position_when_it_finds_a_boulder(self):
        sonar = SonarSimulator({Point(1, 4): Boulder()})
        crawler = SurveyCrawler.at_facing_with_sonar(Point(1, 2), "Up", sonar)

        with pytest.raises(RuntimeError) as an_error:
            crawler.process("(aa)")

        assert SurveyCrawler.can_not_move_over_boulder_error_description() == str(an_error.value)
        assert crawler.is_at_facing(Point(1, 2), "Up")

    def test44_a_guarded_run_undoes_turns_too(self):
        sonar = SonarSimulator({Point(2, 3): Boulder()})
        crawler = SurveyCrawler.at_facing_with_sonar(Point(1, 2), "Up", sonar)

        with pytest.raises(RuntimeError) as an_error:
            crawler.process("(aha)")

        assert SurveyCrawler.can_not_move_over_boulder_error_description() == str(an_error.value)
        assert crawler.is_at_facing(Point(1, 2), "Up")

    def test45_only_what_the_guarded_run_did_is_undone(self):
        sonar = SonarSimulator({Point(1, 5): Boulder()})
        crawler = SurveyCrawler.at_facing_with_sonar(Point(1, 2), "Up", sonar)

        with pytest.raises(RuntimeError) as an_error:
            crawler.process("a(aa)")

        assert SurveyCrawler.can_not_move_over_boulder_error_description() == str(an_error.value)
        assert crawler.is_at_facing(Point(1, 3), "Up")

    def test46_a_guarded_run_returns_to_the_initial_position_when_it_finds_an_invalid_command(self):
        crawler = SurveyCrawler.at_facing(Point(1, 2), "Up")

        with pytest.raises(RuntimeError) as an_error:
            crawler.process("a(ax)")

        assert SurveyCrawler.invalid_command_error_description() == str(an_error.value)
        assert crawler.is_at_facing(Point(1, 3), "Up")

    def test47_a_guarded_run_can_not_move_over_silt(self):
        sonar = SonarSimulator({Point(1, 4): silt_sliding(5)})
        crawler = SurveyCrawler.at_facing_with_sonar(Point(1, 2), "Up", sonar)

        with pytest.raises(RuntimeError) as an_error:
            crawler.process("(aa)")

        assert SurveyCrawler.unpredictable_movement_error_description() == str(an_error.value)
        assert crawler.is_at_facing(Point(1, 2), "Up")

    def test48_a_guarded_run_can_not_start_another_guarded_run(self):
        crawler = SurveyCrawler.at_facing(Point(1, 2), "Up")

        with pytest.raises(RuntimeError) as an_error:
            crawler.process("aa(aa(ht)a)")

        assert SurveyCrawler.nested_guarded_run_error_description() == str(an_error.value)
        assert crawler.is_at_facing(Point(1, 4), "Up")

    def test49_a_guarded_run_has_to_be_finished(self):
        crawler = SurveyCrawler.at_facing(Point(1, 2), "Up")

        with pytest.raises(RuntimeError) as an_error:
            crawler.process("a(aa")

        assert SurveyCrawler.unfinished_guarded_run_error_description() == str(an_error.value)
        assert crawler.is_at_facing(Point(1, 3), "Up")

    def test50_can_not_finish_a_guarded_run_that_was_not_started(self):
        crawler = SurveyCrawler.at_facing(Point(1, 2), "Up")

        with pytest.raises(RuntimeError) as an_error:
            crawler.process("a)")

        assert SurveyCrawler.invalid_command_error_description() == str(an_error.value)
        assert crawler.is_at_facing(Point(1, 3), "Up")

    def test51_repeated_commands_are_undone_by_a_guarded_run(self):
        crawler = SurveyCrawler.at_facing(Point(1, 2), "Up")

        with pytest.raises(RuntimeError) as an_error:
            crawler.process("(a0")

        assert SurveyCrawler.unfinished_guarded_run_error_description() == str(an_error.value)
        assert crawler.is_at_facing(Point(1, 2), "Up")

    def test52_a_repetition_interrupted_by_a_boulder_is_undone_by_a_guarded_run(self):
        sonar = SonarSimulator({Point(1, 5): Boulder()})
        crawler = SurveyCrawler.at_facing_with_sonar(Point(1, 2), "Up", sonar)

        with pytest.raises(RuntimeError) as an_error:
            crawler.process("(a3)")

        assert SurveyCrawler.can_not_move_over_boulder_error_description() == str(an_error.value)
        assert crawler.is_at_facing(Point(1, 2), "Up")

    def test53_a_guarded_run_can_not_repeat_the_command_before_it_started(self):
        crawler = SurveyCrawler.at_facing(Point(1, 2), "Up")

        with pytest.raises(RuntimeError) as an_error:
            crawler.process("a(0)")

        assert SurveyCrawler.invalid_command_error_description() == str(an_error.value)
        assert crawler.is_at_facing(Point(1, 3), "Up")

    def test54_commands_after_a_failed_guarded_run_are_not_processed(self):
        crawler = SurveyCrawler.at_facing(Point(1, 2), "Up")

        with pytest.raises(RuntimeError) as an_error:
            crawler.process("(x)aa")

        assert SurveyCrawler.invalid_command_error_description() == str(an_error.value)
        assert crawler.is_at_facing(Point(1, 2), "Up")

    def test55_a_command_sequence_can_have_more_than_one_guarded_run(self):
        crawler = SurveyCrawler.at_facing(Point(1, 2), "Up")

        crawler.process("aha(aagt3)aa(ht)")

        assert crawler.is_at_facing(Point(3, -1), "Right")

    def test56_the_crawler_works_normally_after_a_failed_guarded_run(self):
        sonar = SonarSimulator({Point(1, 4): silt_sliding(3)})
        crawler = SurveyCrawler.at_facing_with_sonar(Point(1, 2), "Up", sonar)

        with pytest.raises(RuntimeError):
            crawler.process("(aa)")

        crawler.process("aa")

        assert crawler.is_at_facing(Point(1, 6), "Up")

    def test57_undoing_returns_to_positions_the_crawler_could_not_move_to_again(self):
        sonar = SonarSimulator({Point(1, 2): silt_sliding(3)})
        crawler = SurveyCrawler.at_facing_with_sonar(Point(1, 2), "Up", sonar)

        with pytest.raises(RuntimeError) as an_error:
            crawler.process("(ax)")

        assert SurveyCrawler.invalid_command_error_description() == str(an_error.value)
        assert crawler.is_at_facing(Point(1, 2), "Up")

    def test58_can_not_create_a_crawler_with_an_invalid_facing_and_a_sonar(self):
        with pytest.raises(RuntimeError) as an_error:
            SurveyCrawler.at_facing_with_sonar(Point(1, 2), "X", SonarSimulator({}))

        assert SurveyCrawler.invalid_facing_error_description() == str(an_error.value)
