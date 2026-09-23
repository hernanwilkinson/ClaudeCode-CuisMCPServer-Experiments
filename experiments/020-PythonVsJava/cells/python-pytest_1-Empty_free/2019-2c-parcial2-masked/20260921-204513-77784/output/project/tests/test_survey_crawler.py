import pytest

from surveycrawler.boulder import Boulder
from surveycrawler.point import Point
from surveycrawler.silt import Silt
from surveycrawler.sonar import Sonar
from surveycrawler.survey_crawler import SurveyCrawler


class FixedRandom:

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

    # command repetition

    def test17_a_digit_repeats_the_last_command_two_more_times_than_the_digit(self):
        crawler = SurveyCrawler.at_facing(Point(1, 2), "Up")

        crawler.process("a0")

        assert crawler.is_at_facing(Point(1, 5), "Up")

    def test18_the_digit_is_added_to_the_number_of_repetitions(self):
        crawler = SurveyCrawler.at_facing(Point(1, 2), "Up")

        crawler.process("a1")

        assert crawler.is_at_facing(Point(1, 6), "Up")

    def test19_the_biggest_digit_repeats_the_command_twelve_times(self):
        crawler = SurveyCrawler.at_facing(Point(1, 2), "Up")

        crawler.process("a9")

        assert crawler.is_at_facing(Point(1, 14), "Up")

    def test20_a_digit_repeats_the_retreat_command(self):
        crawler = SurveyCrawler.at_facing(Point(1, 2), "Up")

        crawler.process("t0")

        assert crawler.is_at_facing(Point(1, -1), "Up")

    def test21_a_digit_repeats_the_turn_clockwise_command(self):
        crawler = SurveyCrawler.at_facing(Point(1, 2), "Up")

        crawler.process("h0")

        assert crawler.is_at_facing(Point(1, 2), "Left")

    def test22_a_digit_repeats_the_turn_counter_clockwise_command(self):
        crawler = SurveyCrawler.at_facing(Point(1, 2), "Up")

        crawler.process("g0")

        assert crawler.is_at_facing(Point(1, 2), "Right")

    def test23_a_digit_only_repeats_the_command_right_before_it(self):
        crawler = SurveyCrawler.at_facing(Point(1, 2), "Up")

        crawler.process("ah0a")

        assert crawler.is_at_facing(Point(0, 3), "Left")

    def test24_a_digit_without_a_previous_command_is_invalid(self):
        crawler = SurveyCrawler.at_facing(Point(1, 2), "Up")

        with pytest.raises(RuntimeError) as an_error:
            crawler.process("0")

        assert crawler.invalid_command_error_description() == str(an_error.value)
        assert crawler.is_at_facing(Point(1, 2), "Up")

    def test25_only_one_digit_can_follow_a_command(self):
        crawler = SurveyCrawler.at_facing(Point(1, 2), "Up")

        with pytest.raises(RuntimeError) as an_error:
            crawler.process("a00")

        assert crawler.invalid_command_error_description() == str(an_error.value)
        assert crawler.is_at_facing(Point(1, 5), "Up")

    def test26_a_digit_can_not_repeat_the_start_of_a_guarded_run(self):
        crawler = SurveyCrawler.at_facing(Point(1, 2), "Up")

        with pytest.raises(RuntimeError) as an_error:
            crawler.process("a(0a)")

        assert crawler.invalid_command_error_description() == str(an_error.value)
        assert crawler.is_at_facing(Point(1, 3), "Up")

    def test27_a_digit_can_not_repeat_the_end_of_a_guarded_run(self):
        crawler = SurveyCrawler.at_facing(Point(1, 2), "Up")

        with pytest.raises(RuntimeError) as an_error:
            crawler.process("(a)0")

        assert crawler.invalid_command_error_description() == str(an_error.value)
        assert crawler.is_at_facing(Point(1, 3), "Up")

    # boulders

    def test28_can_not_advance_to_a_boulder(self):
        crawler = SurveyCrawler.at_facing_sonar(
            Point(1, 2), "Up", Sonar.with_grounds({Point(1, 3): Boulder()}))

        with pytest.raises(RuntimeError) as an_error:
            crawler.process("a")

        assert crawler.boulder_found_error_description() == str(an_error.value)
        assert crawler.is_at_facing(Point(1, 2), "Up")

    def test29_can_not_retreat_to_a_boulder(self):
        crawler = SurveyCrawler.at_facing_sonar(
            Point(1, 2), "Up", Sonar.with_grounds({Point(1, 1): Boulder()}))

        with pytest.raises(RuntimeError) as an_error:
            crawler.process("t")

        assert crawler.boulder_found_error_description() == str(an_error.value)
        assert crawler.is_at_facing(Point(1, 2), "Up")

    def test30_can_not_turn_counter_clockwise_when_on_a_boulder(self):
        crawler = SurveyCrawler.at_facing_sonar(
            Point(1, 2), "Up", Sonar.with_grounds({Point(1, 2): Boulder()}))

        with pytest.raises(RuntimeError) as an_error:
            crawler.process("g")

        assert crawler.boulder_found_error_description() == str(an_error.value)
        assert crawler.is_at_facing(Point(1, 2), "Up")

    def test31_can_not_turn_clockwise_when_on_a_boulder(self):
        crawler = SurveyCrawler.at_facing_sonar(
            Point(1, 2), "Up", Sonar.with_grounds({Point(1, 2): Boulder()}))

        with pytest.raises(RuntimeError) as an_error:
            crawler.process("h")

        assert crawler.boulder_found_error_description() == str(an_error.value)
        assert crawler.is_at_facing(Point(1, 2), "Up")

    def test32_a_boulder_stops_a_repeated_command(self):
        crawler = SurveyCrawler.at_facing_sonar(
            Point(1, 2), "Up", Sonar.with_grounds({Point(1, 4): Boulder()}))

        with pytest.raises(RuntimeError) as an_error:
            crawler.process("a0")

        assert crawler.boulder_found_error_description() == str(an_error.value)
        assert crawler.is_at_facing(Point(1, 3), "Up")

    # silt

    def test33_advancing_to_silt_slides_the_crawler(self):
        crawler = SurveyCrawler.at_facing_sonar(
            Point(1, 2), "Up",
            Sonar.with_grounds({Point(1, 3): Silt.sliding_with(FixedRandom(2))}))

        crawler.process("a")

        assert crawler.is_at_facing(Point(1, 5), "Up")

    def test34_silt_can_slide_the_crawler_only_one_cell(self):
        crawler = SurveyCrawler.at_facing_sonar(
            Point(1, 2), "Up",
            Sonar.with_grounds({Point(1, 3): Silt.sliding_with(FixedRandom(0))}))

        crawler.process("a")

        assert crawler.is_at_facing(Point(1, 3), "Up")

    def test35_silt_can_slide_the_crawler_up_to_ten_cells(self):
        crawler = SurveyCrawler.at_facing_sonar(
            Point(1, 2), "Up",
            Sonar.with_grounds({Point(1, 3): Silt.sliding_with(FixedRandom(9))}))

        crawler.process("a")

        assert crawler.is_at_facing(Point(1, 12), "Up")

    def test36_retreating_to_silt_slides_the_crawler_backwards(self):
        crawler = SurveyCrawler.at_facing_sonar(
            Point(1, 2), "Up",
            Sonar.with_grounds({Point(1, 1): Silt.sliding_with(FixedRandom(2))}))

        crawler.process("t")

        assert crawler.is_at_facing(Point(1, -1), "Up")

    def test37_silt_does_not_affect_turning(self):
        crawler = SurveyCrawler.at_facing_sonar(
            Point(1, 2), "Up",
            Sonar.with_grounds({Point(1, 2): Silt.sliding_with(FixedRandom(2))}))

        crawler.process("h")

        assert crawler.is_at_facing(Point(1, 2), "Right")

    def test38_the_ground_the_crawler_is_on_does_not_affect_moving(self):
        crawler = SurveyCrawler.at_facing_sonar(
            Point(1, 2), "Up",
            Sonar.with_grounds({Point(1, 2): Silt.sliding_with(FixedRandom(2))}))

        crawler.process("a")

        assert crawler.is_at_facing(Point(1, 3), "Up")

    def test39_the_number_of_cells_slid_on_silt_is_between_one_and_ten(self):
        for _ in range(100):
            crawler = SurveyCrawler.at_facing_sonar(
                Point(1, 2), "Up",
                Sonar.with_grounds({Point(1, 3): Silt.sliding_randomly()}))

            crawler.process("a")

            assert not crawler.is_at_facing(Point(1, 2), "Up")
            assert any(crawler.is_at_facing(Point(1, 2 + a_number_of_cells), "Up")
                       for a_number_of_cells in range(1, Silt.max_number_of_cells_to_slide() + 1))

    # guarded runs

    def test40_a_guarded_run_without_problems_keeps_the_movements_made(self):
        crawler = SurveyCrawler.at_facing(Point(1, 2), "Up")

        crawler.process("(aah)")

        assert crawler.is_at_facing(Point(1, 4), "Right")

    def test41_a_guarded_run_undoes_its_movements_when_it_finds_a_boulder(self):
        crawler = SurveyCrawler.at_facing_sonar(
            Point(1, 2), "Up", Sonar.with_grounds({Point(1, 4): Boulder()}))

        with pytest.raises(RuntimeError) as an_error:
            crawler.process("(aa)")

        assert crawler.boulder_found_error_description() == str(an_error.value)
        assert crawler.is_at_facing(Point(1, 2), "Up")

    def test42_a_guarded_run_undoes_its_turns(self):
        crawler = SurveyCrawler.at_facing_sonar(
            Point(1, 2), "Up", Sonar.with_grounds({Point(2, 2): Boulder()}))

        with pytest.raises(RuntimeError) as an_error:
            crawler.process("(ha)")

        assert crawler.boulder_found_error_description() == str(an_error.value)
        assert crawler.is_at_facing(Point(1, 2), "Up")

    def test43_a_guarded_run_undoes_all_its_movements_and_turns(self):
        crawler = SurveyCrawler.at_facing_sonar(
            Point(1, 2), "Up", Sonar.with_grounds({Point(3, 4): Boulder()}))

        with pytest.raises(RuntimeError) as an_error:
            crawler.process("(aahaa)")

        assert crawler.boulder_found_error_description() == str(an_error.value)
        assert crawler.is_at_facing(Point(1, 2), "Up")

    def test44_can_not_move_on_silt_during_a_guarded_run(self):
        crawler = SurveyCrawler.at_facing_sonar(
            Point(1, 2), "Up",
            Sonar.with_grounds({Point(1, 4): Silt.sliding_with(FixedRandom(2))}))

        with pytest.raises(RuntimeError) as an_error:
            crawler.process("(aa)")

        assert crawler.can_not_slide_during_guarded_run_error_description() == str(an_error.value)
        assert crawler.is_at_facing(Point(1, 2), "Up")

    def test45_a_guarded_run_undoes_its_movements_when_it_finds_an_invalid_command(self):
        crawler = SurveyCrawler.at_facing(Point(1, 2), "Up")

        with pytest.raises(RuntimeError) as an_error:
            crawler.process("(aax)")

        assert crawler.invalid_command_error_description() == str(an_error.value)
        assert crawler.is_at_facing(Point(1, 2), "Up")

    def test46_a_guarded_run_can_not_be_started_during_a_guarded_run(self):
        crawler = SurveyCrawler.at_facing(Point(1, 2), "Up")

        with pytest.raises(RuntimeError) as an_error:
            crawler.process("aa(aa(ht)a)")

        assert crawler.guarded_run_already_started_error_description() == str(an_error.value)
        assert crawler.is_at_facing(Point(1, 4), "Up")

    def test47_a_guarded_run_has_to_be_finished(self):
        crawler = SurveyCrawler.at_facing(Point(1, 2), "Up")

        with pytest.raises(RuntimeError) as an_error:
            crawler.process("a(aa")

        assert crawler.unfinished_guarded_run_error_description() == str(an_error.value)
        assert crawler.is_at_facing(Point(1, 3), "Up")

    def test48_a_guarded_run_can_not_be_finished_when_it_was_not_started(self):
        crawler = SurveyCrawler.at_facing(Point(1, 2), "Up")

        with pytest.raises(RuntimeError) as an_error:
            crawler.process("a)")

        assert crawler.guarded_run_not_started_error_description() == str(an_error.value)
        assert crawler.is_at_facing(Point(1, 3), "Up")

    def test49_commands_can_be_repeated_during_a_guarded_run(self):
        crawler = SurveyCrawler.at_facing(Point(1, 2), "Up")

        crawler.process("(a0)")

        assert crawler.is_at_facing(Point(1, 5), "Up")

    def test50_more_than_one_guarded_run_can_be_processed(self):
        crawler = SurveyCrawler.at_facing(Point(1, 2), "Up")

        crawler.process("aha(aagt3)aa(ht)")

        assert crawler.is_at_facing(Point(3, -1), "Right")

    def test51_a_finished_guarded_run_is_not_undone_by_a_later_problem(self):
        crawler = SurveyCrawler.at_facing(Point(1, 2), "Up")

        with pytest.raises(RuntimeError) as an_error:
            crawler.process("(aa)x")

        assert crawler.invalid_command_error_description() == str(an_error.value)
        assert crawler.is_at_facing(Point(1, 4), "Up")

    def test52_commands_can_be_processed_after_a_failed_guarded_run(self):
        crawler = SurveyCrawler.at_facing(Point(1, 2), "Up")

        with pytest.raises(RuntimeError):
            crawler.process("(aa")

        crawler.process("a")

        assert crawler.is_at_facing(Point(1, 3), "Up")

    def test53_silt_can_be_moved_on_after_a_guarded_run_finishes(self):
        crawler = SurveyCrawler.at_facing_sonar(
            Point(1, 2), "Up",
            Sonar.with_grounds({Point(1, 4): Silt.sliding_with(FixedRandom(2))}))

        crawler.process("(a)a")

        assert crawler.is_at_facing(Point(1, 6), "Up")

    def test54_a_guarded_run_undoes_the_movements_of_a_repeated_command(self):
        crawler = SurveyCrawler.at_facing_sonar(
            Point(1, 2), "Up", Sonar.with_grounds({Point(1, 5): Boulder()}))

        with pytest.raises(RuntimeError) as an_error:
            crawler.process("(a0)")

        assert crawler.boulder_found_error_description() == str(an_error.value)
        assert crawler.is_at_facing(Point(1, 2), "Up")

    def test55_an_empty_guarded_run_does_nothing(self):
        crawler = SurveyCrawler.at_facing(Point(1, 2), "Up")

        crawler.process("a()a")

        assert crawler.is_at_facing(Point(1, 4), "Up")

    def test56_the_crawler_can_turn_on_silt_during_a_guarded_run(self):
        crawler = SurveyCrawler.at_facing_sonar(
            Point(1, 2), "Up",
            Sonar.with_grounds({Point(1, 2): Silt.sliding_with(FixedRandom(2))}))

        crawler.process("(h)")

        assert crawler.is_at_facing(Point(1, 2), "Right")
