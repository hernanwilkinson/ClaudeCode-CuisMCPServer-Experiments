import random

import pytest

from surveycrawler.boulder import Boulder
from surveycrawler.firm_sand import FirmSand
from surveycrawler.point import Point
from surveycrawler.silt import Silt
from surveycrawler.sonar import Sonar
from surveycrawler.survey_crawler import SurveyCrawler


class FixedRandom:
    """Answers always the same number, so sliding on silt can be tested."""

    def __init__(self, a_number):
        self._number = a_number

    def randrange(self, a_limit):
        return self._number


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

    # repeated commands

    def test17_digit_after_a_command_repeats_it_the_digit_plus_two_times(self):
        crawler = SurveyCrawler.at_facing(Point(1, 2), "Up")

        crawler.process("a0")

        assert crawler.is_at_facing(Point(1, 5), "Up")

    def test18_repetition_digit_is_added_to_two_before_repeating(self):
        crawler = SurveyCrawler.at_facing(Point(1, 2), "Up")

        crawler.process("a1")

        assert crawler.is_at_facing(Point(1, 6), "Up")

    def test19_nine_is_the_largest_repetition(self):
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

    def test23_repeated_commands_can_be_mixed_with_other_commands(self):
        crawler = SurveyCrawler.at_facing(Point(1, 2), "Up")

        crawler.process("a0ha1")

        assert crawler.is_at_facing(Point(5, 5), "Right")

    def test24_a_digit_without_a_command_to_repeat_is_invalid(self):
        crawler = SurveyCrawler.at_facing(Point(1, 2), "Up")

        with pytest.raises(RuntimeError) as an_error:
            crawler.process("0")

        assert crawler.invalid_command_error_description() == str(an_error.value)
        assert crawler.is_at_facing(Point(1, 2), "Up")

    def test25_a_repetition_can_not_be_repeated(self):
        crawler = SurveyCrawler.at_facing(Point(1, 2), "Up")

        with pytest.raises(RuntimeError) as an_error:
            crawler.process("a00")

        assert crawler.invalid_command_error_description() == str(an_error.value)
        assert crawler.is_at_facing(Point(1, 5), "Up")

    def test26_the_start_of_a_guarded_run_can_not_be_repeated(self):
        crawler = SurveyCrawler.at_facing(Point(1, 2), "Up")

        with pytest.raises(RuntimeError) as an_error:
            crawler.process("(0)")

        assert crawler.invalid_command_error_description() == str(an_error.value)
        assert crawler.is_at_facing(Point(1, 2), "Up")

    # sonar - firm sand

    def test27_moves_normally_when_the_ground_is_firm_sand(self):
        crawler = SurveyCrawler.at_facing_with_sonar(
            Point(1, 2), "Up", Sonar.with_ground_types({Point(1, 3): FirmSand()}))

        crawler.process("a")

        assert crawler.is_at_facing(Point(1, 3), "Up")

    # sonar - boulder

    def test28_can_not_advance_to_a_boulder(self):
        crawler = SurveyCrawler.at_facing_with_sonar(
            Point(1, 2), "Up", Sonar.with_ground_types({Point(1, 3): Boulder()}))

        with pytest.raises(RuntimeError) as an_error:
            crawler.process("a")

        assert crawler.boulder_found_error_description() == str(an_error.value)
        assert crawler.is_at_facing(Point(1, 2), "Up")

    def test29_can_not_retreat_to_a_boulder(self):
        crawler = SurveyCrawler.at_facing_with_sonar(
            Point(1, 2), "Up", Sonar.with_ground_types({Point(1, 1): Boulder()}))

        with pytest.raises(RuntimeError) as an_error:
            crawler.process("t")

        assert crawler.boulder_found_error_description() == str(an_error.value)
        assert crawler.is_at_facing(Point(1, 2), "Up")

    def test30_can_not_turn_counter_clockwise_on_a_boulder(self):
        crawler = SurveyCrawler.at_facing_with_sonar(
            Point(1, 2), "Up", Sonar.with_ground_types({Point(1, 2): Boulder()}))

        with pytest.raises(RuntimeError) as an_error:
            crawler.process("g")

        assert crawler.boulder_found_error_description() == str(an_error.value)
        assert crawler.is_at_facing(Point(1, 2), "Up")

    def test31_can_not_turn_clockwise_on_a_boulder(self):
        crawler = SurveyCrawler.at_facing_with_sonar(
            Point(1, 2), "Up", Sonar.with_ground_types({Point(1, 2): Boulder()}))

        with pytest.raises(RuntimeError) as an_error:
            crawler.process("h")

        assert crawler.boulder_found_error_description() == str(an_error.value)
        assert crawler.is_at_facing(Point(1, 2), "Up")

    def test32_a_boulder_stops_the_crawler_where_it_was_when_repeating_a_command(self):
        crawler = SurveyCrawler.at_facing_with_sonar(
            Point(1, 2), "Up", Sonar.with_ground_types({Point(1, 4): Boulder()}))

        with pytest.raises(RuntimeError) as an_error:
            crawler.process("a0")

        assert crawler.boulder_found_error_description() == str(an_error.value)
        assert crawler.is_at_facing(Point(1, 3), "Up")

    def test33_a_boulder_does_not_stop_the_crawler_when_it_is_not_in_its_way(self):
        crawler = SurveyCrawler.at_facing_with_sonar(
            Point(1, 2), "Up", Sonar.with_ground_types({Point(2, 3): Boulder()}))

        crawler.process("a")

        assert crawler.is_at_facing(Point(1, 3), "Up")

    # sonar - silt

    def test34_slides_at_least_to_the_position_it_was_going_to_when_the_ground_is_silt(self):
        crawler = SurveyCrawler.at_facing_with_sonar(
            Point(1, 2), "Up",
            Sonar.with_ground_types({Point(1, 3): Silt.with_random(FixedRandom(0))}))

        crawler.process("a")

        assert crawler.is_at_facing(Point(1, 3), "Up")

    def test35_slides_an_unexpected_number_of_cells_when_the_ground_is_silt(self):
        crawler = SurveyCrawler.at_facing_with_sonar(
            Point(1, 2), "Up",
            Sonar.with_ground_types({Point(1, 3): Silt.with_random(FixedRandom(4))}))

        crawler.process("a")

        assert crawler.is_at_facing(Point(1, 7), "Up")

    def test36_can_not_slide_more_than_the_sliding_limit_when_the_ground_is_silt(self):
        crawler = SurveyCrawler.at_facing_with_sonar(
            Point(1, 2), "Up",
            Sonar.with_ground_types(
                {Point(1, 3): Silt.with_random(FixedRandom(Silt.sliding_limit() - 1))}))

        crawler.process("a")

        assert crawler.is_at_facing(Point(1, 12), "Up")

    def test37_always_slides_inside_the_sliding_limit_when_the_ground_is_silt(self):
        a_random = random.Random(1)

        for a_try in range(100):
            crawler = SurveyCrawler.at_facing_with_sonar(
                Point(1, 2), "Up",
                Sonar.with_ground_types({Point(1, 3): Silt.with_random(a_random)}))

            crawler.process("a")

            assert any(crawler.is_at_facing(Point(1, 2 + a_slide), "Up")
                       for a_slide in range(1, Silt.sliding_limit() + 1))

    def test38_slides_backwards_when_retreating_to_silt(self):
        crawler = SurveyCrawler.at_facing_with_sonar(
            Point(1, 2), "Up",
            Sonar.with_ground_types({Point(1, 1): Silt.with_random(FixedRandom(3))}))

        crawler.process("t")

        assert crawler.is_at_facing(Point(1, -2), "Up")

    def test39_slides_in_the_direction_it_was_going_when_facing_right(self):
        crawler = SurveyCrawler.at_facing_with_sonar(
            Point(1, 2), "Right",
            Sonar.with_ground_types({Point(2, 2): Silt.with_random(FixedRandom(2))}))

        crawler.process("a")

        assert crawler.is_at_facing(Point(4, 2), "Right")

    def test40_silt_does_not_affect_turning(self):
        crawler = SurveyCrawler.at_facing_with_sonar(
            Point(1, 2), "Up",
            Sonar.with_ground_types({Point(1, 2): Silt.with_random(FixedRandom(5))}))

        crawler.process("h")

        assert crawler.is_at_facing(Point(1, 2), "Right")

    # guarded run

    def test41_a_guarded_run_without_problems_processes_its_commands(self):
        crawler = SurveyCrawler.at_facing(Point(1, 2), "Up")

        crawler.process("(aa)")

        assert crawler.is_at_facing(Point(1, 4), "Up")

    def test42_an_empty_guarded_run_does_nothing(self):
        crawler = SurveyCrawler.at_facing(Point(1, 2), "Up")

        crawler.process("()")

        assert crawler.is_at_facing(Point(1, 2), "Up")

    def test43_a_guarded_run_undoes_its_movements_when_a_boulder_is_found(self):
        crawler = SurveyCrawler.at_facing_with_sonar(
            Point(1, 2), "Up", Sonar.with_ground_types({Point(1, 4): Boulder()}))

        with pytest.raises(RuntimeError) as an_error:
            crawler.process("(aa)")

        assert crawler.boulder_found_error_description() == str(an_error.value)
        assert crawler.is_at_facing(Point(1, 2), "Up")

    def test44_a_guarded_run_undoes_its_turns_when_there_is_a_problem(self):
        crawler = SurveyCrawler.at_facing_with_sonar(
            Point(1, 2), "Up", Sonar.with_ground_types({Point(2, 3): Boulder()}))

        with pytest.raises(RuntimeError) as an_error:
            crawler.process("(aha)")

        assert crawler.boulder_found_error_description() == str(an_error.value)
        assert crawler.is_at_facing(Point(1, 2), "Up")

    def test45_a_guarded_run_undoes_repeated_commands_when_there_is_a_problem(self):
        crawler = SurveyCrawler.at_facing_with_sonar(
            Point(1, 2), "Up", Sonar.with_ground_types({Point(1, 5): Boulder()}))

        with pytest.raises(RuntimeError) as an_error:
            crawler.process("(a0)")

        assert crawler.boulder_found_error_description() == str(an_error.value)
        assert crawler.is_at_facing(Point(1, 2), "Up")

    def test46_can_not_move_on_silt_during_a_guarded_run(self):
        crawler = SurveyCrawler.at_facing_with_sonar(
            Point(1, 2), "Up",
            Sonar.with_ground_types({Point(1, 4): Silt.with_random(FixedRandom(3))}))

        with pytest.raises(RuntimeError) as an_error:
            crawler.process("(aa)")

        assert crawler.silt_found_error_description() == str(an_error.value)
        assert crawler.is_at_facing(Point(1, 2), "Up")

    def test47_can_turn_on_silt_during_a_guarded_run(self):
        crawler = SurveyCrawler.at_facing_with_sonar(
            Point(1, 2), "Up",
            Sonar.with_ground_types({Point(1, 2): Silt.with_random(FixedRandom(3))}))

        crawler.process("(h)")

        assert crawler.is_at_facing(Point(1, 2), "Right")

    def test48_a_guarded_run_undoes_its_movements_when_an_invalid_command_is_found(self):
        crawler = SurveyCrawler.at_facing(Point(1, 2), "Up")

        with pytest.raises(RuntimeError) as an_error:
            crawler.process("(ahx)")

        assert crawler.invalid_command_error_description() == str(an_error.value)
        assert crawler.is_at_facing(Point(1, 2), "Up")

    def test49_can_not_start_a_guarded_run_during_a_guarded_run(self):
        crawler = SurveyCrawler.at_facing(Point(1, 2), "Up")

        with pytest.raises(RuntimeError) as an_error:
            crawler.process("aa(aa(ht)a)")

        assert crawler.guarded_run_inside_guarded_run_error_description() == str(an_error.value)
        assert crawler.is_at_facing(Point(1, 4), "Up")

    def test50_a_guarded_run_must_be_finished(self):
        crawler = SurveyCrawler.at_facing(Point(1, 2), "Up")

        with pytest.raises(RuntimeError) as an_error:
            crawler.process("a(aa")

        assert crawler.unfinished_guarded_run_error_description() == str(an_error.value)
        assert crawler.is_at_facing(Point(1, 3), "Up")

    def test51_can_not_finish_a_guarded_run_that_was_not_started(self):
        crawler = SurveyCrawler.at_facing(Point(1, 2), "Up")

        with pytest.raises(RuntimeError) as an_error:
            crawler.process("a)")

        assert crawler.invalid_command_error_description() == str(an_error.value)
        assert crawler.is_at_facing(Point(1, 3), "Up")

    def test52_more_than_one_guarded_run_can_be_processed(self):
        crawler = SurveyCrawler.at_facing(Point(1, 2), "Up")

        crawler.process("aha(aagt3)aa(ht)")

        assert crawler.is_at_facing(Point(3, -1), "Right")

    def test53_movements_of_a_finished_guarded_run_are_not_undone(self):
        crawler = SurveyCrawler.at_facing(Point(1, 2), "Up")

        with pytest.raises(RuntimeError) as an_error:
            crawler.process("(aa)x")

        assert crawler.invalid_command_error_description() == str(an_error.value)
        assert crawler.is_at_facing(Point(1, 4), "Up")

    def test54_movements_made_before_a_guarded_run_are_not_undone(self):
        crawler = SurveyCrawler.at_facing_with_sonar(
            Point(1, 2), "Up", Sonar.with_ground_types({Point(1, 5): Boulder()}))

        with pytest.raises(RuntimeError) as an_error:
            crawler.process("a(aa)")

        assert crawler.boulder_found_error_description() == str(an_error.value)
        assert crawler.is_at_facing(Point(1, 3), "Up")

    def test55_commands_after_a_failed_guarded_run_are_not_processed(self):
        crawler = SurveyCrawler.at_facing(Point(1, 2), "Up")

        with pytest.raises(RuntimeError):
            crawler.process("(x)aa")

        assert crawler.is_at_facing(Point(1, 2), "Up")

    def test56_can_process_commands_after_a_failed_guarded_run(self):
        crawler = SurveyCrawler.at_facing(Point(1, 2), "Up")

        with pytest.raises(RuntimeError):
            crawler.process("a(aa")

        crawler.process("ah")

        assert crawler.is_at_facing(Point(1, 4), "Right")

    def test57_a_guarded_run_undoes_everything_when_it_slides_on_silt_after_moving(self):
        crawler = SurveyCrawler.at_facing_with_sonar(
            Point(1, 2), "Right",
            Sonar.with_ground_types({Point(2, 1): Silt.with_random(FixedRandom(9))}))

        with pytest.raises(RuntimeError) as an_error:
            crawler.process("(aha)")

        assert crawler.silt_found_error_description() == str(an_error.value)
        assert crawler.is_at_facing(Point(1, 2), "Right")
