import random

import pytest

from surveycrawler.point import Point
from surveycrawler.boulder import Boulder
from surveycrawler.silt import Silt
from surveycrawler.sonar import Sonar
from surveycrawler.survey_crawler import SurveyCrawler


class RandomizerStub:
    """Answers always the same number, remembering the limits it was asked for."""

    def __init__(self, a_number_to_answer):
        self._number_to_answer = a_number_to_answer
        self._limits_asked = []

    def randrange(self, a_limit):
        self._limits_asked.append(a_limit)
        return self._number_to_answer

    def limits_asked(self):
        return self._limits_asked


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

    def test17_a_digit_repeats_the_last_command_two_extra_times(self):
        crawler = SurveyCrawler.at_facing(Point(1, 2), "Up")

        crawler.process("a0")

        assert crawler.is_at_facing(Point(1, 5), "Up")

    def test18_the_digit_value_is_added_to_the_two_extra_repetitions(self):
        crawler = SurveyCrawler.at_facing(Point(1, 2), "Up")

        crawler.process("a1")

        assert crawler.is_at_facing(Point(1, 6), "Up")

    def test19_nine_is_the_largest_repetition_and_repeats_eleven_extra_times(self):
        crawler = SurveyCrawler.at_facing(Point(1, 2), "Up")

        crawler.process("a9")

        assert crawler.is_at_facing(Point(1, 14), "Up")

    def test20_t_can_be_repeated(self):
        crawler = SurveyCrawler.at_facing(Point(1, 2), "Up")

        crawler.process("t0")

        assert crawler.is_at_facing(Point(1, -1), "Up")

    def test21_h_can_be_repeated(self):
        crawler = SurveyCrawler.at_facing(Point(1, 2), "Up")

        crawler.process("h0")

        assert crawler.is_at_facing(Point(1, 2), "Left")

    def test22_g_can_be_repeated(self):
        crawler = SurveyCrawler.at_facing(Point(1, 2), "Up")

        crawler.process("g0")

        assert crawler.is_at_facing(Point(1, 2), "Right")

    def test23_a_digit_repeats_only_the_last_command(self):
        crawler = SurveyCrawler.at_facing(Point(1, 2), "Up")

        crawler.process("at0")

        assert crawler.is_at_facing(Point(1, 0), "Up")

    def test24_a_digit_without_a_previous_command_is_invalid(self):
        crawler = SurveyCrawler.at_facing(Point(1, 2), "Up")

        with pytest.raises(RuntimeError) as an_error:
            crawler.process("0")

        assert crawler.invalid_command_error_description() == str(an_error.value)
        assert crawler.is_at_facing(Point(1, 2), "Up")

    def test25_a_repetition_is_a_single_digit(self):
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

    def test27_the_end_of_a_guarded_run_can_not_be_repeated(self):
        crawler = SurveyCrawler.at_facing(Point(1, 2), "Up")

        with pytest.raises(RuntimeError) as an_error:
            crawler.process("(a)0")

        assert crawler.invalid_command_error_description() == str(an_error.value)
        assert crawler.is_at_facing(Point(1, 3), "Up")

    def test28_commands_can_be_repeated_inside_a_guarded_run(self):
        crawler = SurveyCrawler.at_facing(Point(1, 2), "Up")

        crawler.process("(a0)")

        assert crawler.is_at_facing(Point(1, 5), "Up")

    # firm sand

    def test29_moving_to_firm_sand_moves_one_cell(self):
        crawler = self.crawler_at_facing_with_grounds(Point(1, 2), "Up", {})

        crawler.process("a")

        assert crawler.is_at_facing(Point(1, 3), "Up")

    # boulders

    def test30_can_not_advance_to_a_boulder(self):
        crawler = self.crawler_at_facing_with_grounds(Point(1, 2), "Up", {Point(1, 3): Boulder()})

        with pytest.raises(RuntimeError) as an_error:
            crawler.process("a")

        assert crawler.boulder_found_error_description() == str(an_error.value)
        assert crawler.is_at_facing(Point(1, 2), "Up")

    def test31_can_not_retreat_to_a_boulder(self):
        crawler = self.crawler_at_facing_with_grounds(Point(1, 2), "Up", {Point(1, 1): Boulder()})

        with pytest.raises(RuntimeError) as an_error:
            crawler.process("t")

        assert crawler.boulder_found_error_description() == str(an_error.value)
        assert crawler.is_at_facing(Point(1, 2), "Up")

    def test32_can_not_turn_counter_clockwise_when_on_a_boulder(self):
        crawler = self.crawler_at_facing_with_grounds(Point(1, 2), "Up", {Point(1, 2): Boulder()})

        with pytest.raises(RuntimeError) as an_error:
            crawler.process("g")

        assert crawler.boulder_found_error_description() == str(an_error.value)
        assert crawler.is_at_facing(Point(1, 2), "Up")

    def test33_can_not_turn_clockwise_when_on_a_boulder(self):
        crawler = self.crawler_at_facing_with_grounds(Point(1, 2), "Up", {Point(1, 2): Boulder()})

        with pytest.raises(RuntimeError) as an_error:
            crawler.process("h")

        assert crawler.boulder_found_error_description() == str(an_error.value)
        assert crawler.is_at_facing(Point(1, 2), "Up")

    def test34_a_boulder_ahead_does_not_stop_the_crawler_from_turning(self):
        crawler = self.crawler_at_facing_with_grounds(Point(1, 2), "Up", {Point(1, 3): Boulder()})

        crawler.process("h")

        assert crawler.is_at_facing(Point(1, 2), "Right")

    def test35_the_crawler_can_move_away_from_the_boulder_it_is_on(self):
        crawler = self.crawler_at_facing_with_grounds(Point(1, 2), "Up", {Point(1, 2): Boulder()})

        crawler.process("a")

        assert crawler.is_at_facing(Point(1, 3), "Up")

    def test36_only_the_commands_before_the_boulder_are_processed(self):
        crawler = self.crawler_at_facing_with_grounds(Point(1, 2), "Up", {Point(1, 5): Boulder()})

        with pytest.raises(RuntimeError) as an_error:
            crawler.process("a0")

        assert crawler.boulder_found_error_description() == str(an_error.value)
        assert crawler.is_at_facing(Point(1, 4), "Up")

    # silt

    def test37_advancing_to_silt_slides_the_crawler_at_least_one_cell(self):
        crawler = self.crawler_at_facing_with_grounds(
            Point(1, 2), "Up", {Point(1, 3): Silt(RandomizerStub(0))})

        crawler.process("a")

        assert crawler.is_at_facing(Point(1, 3), "Up")

    def test38_advancing_to_silt_slides_the_crawler_an_unexpected_number_of_cells(self):
        crawler = self.crawler_at_facing_with_grounds(
            Point(1, 2), "Up", {Point(1, 3): Silt(RandomizerStub(2))})

        crawler.process("a")

        assert crawler.is_at_facing(Point(1, 5), "Up")

    def test39_the_crawler_slides_at_most_ten_cells_on_silt(self):
        a_randomizer = RandomizerStub(9)
        crawler = self.crawler_at_facing_with_grounds(
            Point(1, 2), "Up", {Point(1, 3): Silt(a_randomizer)})

        crawler.process("a")

        assert crawler.is_at_facing(Point(1, 12), "Up")
        assert [Silt.max_number_of_cells_to_slide()] == a_randomizer.limits_asked()

    def test40_retreating_to_silt_slides_the_crawler_backwards(self):
        crawler = self.crawler_at_facing_with_grounds(
            Point(1, 2), "Up", {Point(1, 1): Silt(RandomizerStub(2))})

        crawler.process("t")

        assert crawler.is_at_facing(Point(1, -1), "Up")

    def test41_silt_does_not_affect_turning(self):
        crawler = self.crawler_at_facing_with_grounds(
            Point(1, 2), "Up", {Point(1, 2): Silt(RandomizerStub(2))})

        crawler.process("hg")

        assert crawler.is_at_facing(Point(1, 2), "Up")

    def test42_sliding_on_silt_always_leaves_the_crawler_inside_the_sliding_limit(self):
        a_sonar = Sonar.with_grounds({Point(1, 3): Silt(random.Random(1234))})
        a_set_of_reached_positions = set()

        for a_slide in range(100):
            crawler = SurveyCrawler.at_facing_sonar(Point(1, 2), "Up", a_sonar)

            crawler.process("a")

            a_set_of_reached_positions.add(crawler.position())

        assert {Point(1, 2 + a_number_of_cells)
                for a_number_of_cells
                in range(1, Silt.max_number_of_cells_to_slide() + 1)} == a_set_of_reached_positions

    # guarded runs

    def test43_a_guarded_run_without_problems_processes_all_its_commands(self):
        crawler = SurveyCrawler.at_facing(Point(1, 2), "Up")

        crawler.process("(aah)")

        assert crawler.is_at_facing(Point(1, 4), "Right")

    def test44_a_guarded_run_undoes_its_movements_when_a_boulder_is_found(self):
        crawler = self.crawler_at_facing_with_grounds(Point(1, 2), "Up", {Point(1, 4): Boulder()})

        with pytest.raises(RuntimeError) as an_error:
            crawler.process("(aa)")

        assert crawler.boulder_found_error_description() == str(an_error.value)
        assert crawler.is_at_facing(Point(1, 2), "Up")

    def test45_a_guarded_run_undoes_its_turns_too(self):
        crawler = self.crawler_at_facing_with_grounds(Point(1, 2), "Up", {Point(3, 4): Boulder()})

        with pytest.raises(RuntimeError) as an_error:
            crawler.process("(aahaa)")

        assert crawler.boulder_found_error_description() == str(an_error.value)
        assert crawler.is_at_facing(Point(1, 2), "Up")

    def test46_a_guarded_run_does_not_undo_the_commands_processed_before_it_started(self):
        crawler = self.crawler_at_facing_with_grounds(Point(1, 2), "Up", {Point(2, 3): Boulder()})

        with pytest.raises(RuntimeError) as an_error:
            crawler.process("a(ha)")

        assert crawler.boulder_found_error_description() == str(an_error.value)
        assert crawler.is_at_facing(Point(1, 3), "Up")

    def test47_a_guarded_run_can_not_move_on_silt(self):
        crawler = self.crawler_at_facing_with_grounds(
            Point(1, 2), "Up", {Point(1, 4): Silt(RandomizerStub(2))})

        with pytest.raises(RuntimeError) as an_error:
            crawler.process("(aa)")

        assert crawler.can_not_move_on_silt_during_a_guarded_run_error_description() == str(an_error.value)
        assert crawler.is_at_facing(Point(1, 2), "Up")

    def test48_a_guarded_run_can_turn_on_silt(self):
        crawler = self.crawler_at_facing_with_grounds(
            Point(1, 2), "Up", {Point(1, 2): Silt(RandomizerStub(2))})

        crawler.process("(h)")

        assert crawler.is_at_facing(Point(1, 2), "Right")

    def test49_a_guarded_run_undoes_its_movements_when_an_invalid_command_is_found(self):
        crawler = SurveyCrawler.at_facing(Point(1, 2), "Up")

        with pytest.raises(RuntimeError) as an_error:
            crawler.process("(ahax)")

        assert crawler.invalid_command_error_description() == str(an_error.value)
        assert crawler.is_at_facing(Point(1, 2), "Up")

    def test50_a_guarded_run_can_not_be_started_during_a_guarded_run(self):
        crawler = SurveyCrawler.at_facing(Point(1, 2), "Up")

        with pytest.raises(RuntimeError) as an_error:
            crawler.process("aa(aa(ht)a)")

        assert crawler.can_not_start_a_guarded_run_during_a_guarded_run_error_description() == str(an_error.value)
        assert crawler.is_at_facing(Point(1, 4), "Up")

    def test51_a_guarded_run_has_to_be_finished(self):
        crawler = SurveyCrawler.at_facing(Point(1, 2), "Up")

        with pytest.raises(RuntimeError) as an_error:
            crawler.process("a(aa")

        assert crawler.guarded_run_not_finished_error_description() == str(an_error.value)
        assert crawler.is_at_facing(Point(1, 3), "Up")

    def test52_a_guarded_run_can_not_be_ended_when_it_was_not_started(self):
        crawler = SurveyCrawler.at_facing(Point(1, 2), "Up")

        with pytest.raises(RuntimeError) as an_error:
            crawler.process("a)")

        assert crawler.invalid_command_error_description() == str(an_error.value)
        assert crawler.is_at_facing(Point(1, 3), "Up")

    def test53_a_sequence_of_commands_can_have_more_than_one_guarded_run(self):
        crawler = SurveyCrawler.at_facing(Point(1, 2), "Up")

        crawler.process("aha(aagt3)aa(ht)")

        assert crawler.is_at_facing(Point(3, -1), "Right")

    def test54_a_finished_guarded_run_is_not_undone_by_a_later_problem(self):
        crawler = SurveyCrawler.at_facing(Point(1, 2), "Up")

        with pytest.raises(RuntimeError) as an_error:
            crawler.process("(aa)x")

        assert crawler.invalid_command_error_description() == str(an_error.value)
        assert crawler.is_at_facing(Point(1, 4), "Up")

    def test55_a_failed_guarded_run_does_not_undo_a_previous_guarded_run(self):
        crawler = self.crawler_at_facing_with_grounds(Point(1, 2), "Up", {Point(1, 5): Boulder()})

        with pytest.raises(RuntimeError) as an_error:
            crawler.process("(aa)(aa)")

        assert crawler.boulder_found_error_description() == str(an_error.value)
        assert crawler.is_at_facing(Point(1, 4), "Up")

    def test56_the_crawler_can_be_used_again_after_a_guarded_run_failed(self):
        crawler = self.crawler_at_facing_with_grounds(Point(1, 2), "Up", {Point(1, 4): Boulder()})

        with pytest.raises(RuntimeError):
            crawler.process("(aa)")

        crawler.process("ha0")

        assert crawler.is_at_facing(Point(4, 2), "Right")

    def test57_a_guarded_run_can_be_started_again_after_one_failed(self):
        crawler = self.crawler_at_facing_with_grounds(Point(1, 2), "Up", {Point(1, 4): Boulder()})

        with pytest.raises(RuntimeError):
            crawler.process("(aa)")

        crawler.process("(a)")

        assert crawler.is_at_facing(Point(1, 3), "Up")

    def test58_an_unfinished_guarded_run_undoes_its_movements(self):
        crawler = SurveyCrawler.at_facing(Point(1, 2), "Up")

        with pytest.raises(RuntimeError) as an_error:
            crawler.process("h(aag")

        assert crawler.guarded_run_not_finished_error_description() == str(an_error.value)
        assert crawler.is_at_facing(Point(1, 2), "Right")

    # test support

    def crawler_at_facing_with_grounds(self, a_position, a_facing_name, a_dictionary_of_grounds):
        return SurveyCrawler.at_facing_sonar(
            a_position, a_facing_name, Sonar.with_grounds(a_dictionary_of_grounds))
