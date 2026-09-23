import pytest

from surveycrawler.boulder import Boulder
from surveycrawler.guarded_run import GuardedRun
from surveycrawler.ground_map_sonar import GroundMapSonar
from surveycrawler.point import Point
from surveycrawler.silt import Silt
from surveycrawler.survey_crawler import SurveyCrawler


class RandomStub:
    """Answers always the same number, so the sliding on silt can be tested."""

    def __init__(self, a_number):
        self._number = a_number
        self._last_limit = None

    def randrange(self, a_limit):
        self._last_limit = a_limit
        return self._number

    def last_limit(self):
        return self._last_limit


def crawler_at_facing_with_grounds(a_position, a_facing_name, a_ground_by_position):
    return SurveyCrawler.at_facing_with_sonar(
        a_position, a_facing_name, GroundMapSonar.with_grounds_at(a_ground_by_position))


def silt_sliding(a_number_of_cells):
    return Silt.with_random(RandomStub(a_number_of_cells - 1))


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

    def test18_one_repeats_the_last_command_three_more_times(self):
        crawler = SurveyCrawler.at_facing(Point(1, 2), "Up")

        crawler.process("a1")

        assert crawler.is_at_facing(Point(1, 6), "Up")

    def test19_nine_repeats_the_last_command_eleven_more_times(self):
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

    def test23_a_digit_repeats_only_the_last_command(self):
        crawler = SurveyCrawler.at_facing(Point(1, 2), "Up")

        crawler.process("aha0")

        assert crawler.is_at_facing(Point(4, 3), "Right")

    def test24_a_digit_without_a_previous_command_is_invalid(self):
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

    def test26_a_digit_can_not_be_repeated_after_a_guarded_run_ends(self):
        crawler = SurveyCrawler.at_facing(Point(1, 2), "Up")

        with pytest.raises(RuntimeError) as an_error:
            crawler.process("(a)0")

        assert crawler.invalid_command_error_description() == str(an_error.value)
        assert crawler.is_at_facing(Point(1, 3), "Up")

    def test27_a_digit_can_not_be_the_first_command_of_a_guarded_run(self):
        crawler = SurveyCrawler.at_facing(Point(1, 2), "Up")

        with pytest.raises(RuntimeError) as an_error:
            crawler.process("a(0)")

        assert crawler.invalid_command_error_description() == str(an_error.value)
        assert crawler.is_at_facing(Point(1, 3), "Up")

    def test28_an_invalid_command_can_not_be_repeated(self):
        crawler = SurveyCrawler.at_facing(Point(1, 2), "Up")

        with pytest.raises(RuntimeError) as an_error:
            crawler.process("x0")

        assert crawler.invalid_command_error_description() == str(an_error.value)
        assert crawler.is_at_facing(Point(1, 2), "Up")

    # sonar - boulder

    def test29_can_not_advance_to_a_position_with_a_boulder(self):
        crawler = crawler_at_facing_with_grounds(Point(1, 2), "Up", {Point(1, 3): Boulder()})

        with pytest.raises(RuntimeError) as an_error:
            crawler.process("a")

        assert Boulder.boulder_found_error_description() == str(an_error.value)
        assert crawler.is_at_facing(Point(1, 2), "Up")

    def test30_can_not_retreat_to_a_position_with_a_boulder(self):
        crawler = crawler_at_facing_with_grounds(Point(1, 2), "Up", {Point(1, 1): Boulder()})

        with pytest.raises(RuntimeError) as an_error:
            crawler.process("t")

        assert Boulder.boulder_found_error_description() == str(an_error.value)
        assert crawler.is_at_facing(Point(1, 2), "Up")

    def test31_can_not_turn_clockwise_when_on_a_boulder(self):
        crawler = crawler_at_facing_with_grounds(Point(1, 2), "Up", {Point(1, 2): Boulder()})

        with pytest.raises(RuntimeError) as an_error:
            crawler.process("h")

        assert Boulder.boulder_found_error_description() == str(an_error.value)
        assert crawler.is_at_facing(Point(1, 2), "Up")

    def test32_can_not_turn_counter_clockwise_when_on_a_boulder(self):
        crawler = crawler_at_facing_with_grounds(Point(1, 2), "Up", {Point(1, 2): Boulder()})

        with pytest.raises(RuntimeError) as an_error:
            crawler.process("g")

        assert Boulder.boulder_found_error_description() == str(an_error.value)
        assert crawler.is_at_facing(Point(1, 2), "Up")

    def test33_a_boulder_stops_a_repeated_command_where_it_was_found(self):
        crawler = crawler_at_facing_with_grounds(Point(1, 2), "Up", {Point(1, 5): Boulder()})

        with pytest.raises(RuntimeError) as an_error:
            crawler.process("a0")

        assert Boulder.boulder_found_error_description() == str(an_error.value)
        assert crawler.is_at_facing(Point(1, 4), "Up")

    # sonar - silt

    def test34_advancing_to_silt_can_slide_the_crawler_only_one_cell(self):
        crawler = crawler_at_facing_with_grounds(Point(1, 2), "Up", {Point(1, 3): silt_sliding(1)})

        crawler.process("a")

        assert crawler.is_at_facing(Point(1, 3), "Up")

    def test35_advancing_to_silt_can_slide_the_crawler_up_to_the_slide_limit(self):
        crawler = crawler_at_facing_with_grounds(Point(1, 2), "Up", {Point(1, 3): silt_sliding(10)})

        crawler.process("a")

        assert crawler.is_at_facing(Point(1, 12), "Up")

    def test36_the_number_of_cells_the_crawler_slides_is_between_one_and_the_slide_limit(self):
        a_random = RandomStub(0)
        crawler = crawler_at_facing_with_grounds(
            Point(1, 2), "Up", {Point(1, 3): Silt.with_random(a_random)})

        crawler.process("a")

        assert 10 == Silt.slide_limit()
        assert Silt.slide_limit() == a_random.last_limit()

    def test37_retreating_to_silt_slides_the_crawler_backwards(self):
        crawler = crawler_at_facing_with_grounds(Point(1, 2), "Up", {Point(1, 1): silt_sliding(5)})

        crawler.process("t")

        assert crawler.is_at_facing(Point(1, -3), "Up")

    def test38_the_crawler_keeps_moving_after_sliding_on_silt(self):
        crawler = crawler_at_facing_with_grounds(Point(1, 2), "Up", {Point(1, 3): silt_sliding(3)})

        crawler.process("aa")

        assert crawler.is_at_facing(Point(1, 6), "Up")

    def test39_silt_does_not_affect_turning(self):
        crawler = crawler_at_facing_with_grounds(Point(1, 2), "Up", {Point(1, 2): silt_sliding(4)})

        crawler.process("h")

        assert crawler.is_at_facing(Point(1, 2), "Right")

    # guarded run

    def test40_a_guarded_run_without_problems_moves_the_crawler(self):
        crawler = SurveyCrawler.at_facing(Point(1, 2), "Up")

        crawler.process("(ah)")

        assert crawler.is_at_facing(Point(1, 3), "Right")

    def test41_an_empty_guarded_run_does_nothing(self):
        crawler = SurveyCrawler.at_facing(Point(1, 2), "Up")

        crawler.process("()")

        assert crawler.is_at_facing(Point(1, 2), "Up")

    def test42_a_guarded_run_undoes_its_movements_when_a_boulder_is_found(self):
        crawler = crawler_at_facing_with_grounds(Point(1, 2), "Up", {Point(1, 4): Boulder()})

        with pytest.raises(RuntimeError) as an_error:
            crawler.process("(aa)")

        assert Boulder.boulder_found_error_description() == str(an_error.value)
        assert crawler.is_at_facing(Point(1, 2), "Up")

    def test43_a_guarded_run_undoes_its_turns_and_movements(self):
        crawler = crawler_at_facing_with_grounds(Point(1, 2), "Up", {Point(3, 3): Boulder()})

        with pytest.raises(RuntimeError) as an_error:
            crawler.process("(ahaa)")

        assert Boulder.boulder_found_error_description() == str(an_error.value)
        assert crawler.is_at_facing(Point(1, 2), "Up")

    def test44_a_guarded_run_undoes_repeated_commands(self):
        crawler = crawler_at_facing_with_grounds(Point(1, 2), "Up", {Point(1, 5): Boulder()})

        with pytest.raises(RuntimeError) as an_error:
            crawler.process("(a0)")

        assert Boulder.boulder_found_error_description() == str(an_error.value)
        assert crawler.is_at_facing(Point(1, 2), "Up")

    def test45_the_crawler_can_not_move_on_silt_during_a_guarded_run(self):
        crawler = crawler_at_facing_with_grounds(Point(1, 2), "Up", {Point(1, 4): silt_sliding(3)})

        with pytest.raises(RuntimeError) as an_error:
            crawler.process("(aa)")

        assert GuardedRun.can_not_slide_on_silt_error_description() == str(an_error.value)
        assert crawler.is_at_facing(Point(1, 2), "Up")

    def test46_the_crawler_can_turn_on_silt_during_a_guarded_run(self):
        crawler = crawler_at_facing_with_grounds(Point(1, 2), "Up", {Point(1, 2): silt_sliding(4)})

        crawler.process("(h)")

        assert crawler.is_at_facing(Point(1, 2), "Right")

    def test47_an_invalid_command_during_a_guarded_run_undoes_its_movements(self):
        crawler = SurveyCrawler.at_facing(Point(1, 2), "Up")

        with pytest.raises(RuntimeError) as an_error:
            crawler.process("(ax)")

        assert crawler.invalid_command_error_description() == str(an_error.value)
        assert crawler.is_at_facing(Point(1, 2), "Up")

    def test48_a_guarded_run_can_not_be_started_during_a_guarded_run(self):
        crawler = SurveyCrawler.at_facing(Point(1, 2), "Up")

        with pytest.raises(RuntimeError) as an_error:
            crawler.process("aa(aa(ht)a)")

        assert GuardedRun.guarded_run_already_started_error_description() == str(an_error.value)
        assert crawler.is_at_facing(Point(1, 4), "Up")

    def test49_a_guarded_run_has_to_be_finished(self):
        crawler = SurveyCrawler.at_facing(Point(1, 2), "Up")

        with pytest.raises(RuntimeError) as an_error:
            crawler.process("a(aa")

        assert GuardedRun.unfinished_guarded_run_error_description() == str(an_error.value)
        assert crawler.is_at_facing(Point(1, 3), "Up")

    def test50_a_guarded_run_can_not_be_ended_when_it_was_not_started(self):
        crawler = SurveyCrawler.at_facing(Point(1, 2), "Up")

        with pytest.raises(RuntimeError) as an_error:
            crawler.process("a)")

        assert crawler.invalid_command_error_description() == str(an_error.value)
        assert crawler.is_at_facing(Point(1, 3), "Up")

    def test51_a_guarded_run_does_not_undo_the_commands_processed_before_it(self):
        crawler = crawler_at_facing_with_grounds(Point(1, 2), "Up", {Point(1, 5): Boulder()})

        with pytest.raises(RuntimeError) as an_error:
            crawler.process("a(a)a")

        assert Boulder.boulder_found_error_description() == str(an_error.value)
        assert crawler.is_at_facing(Point(1, 4), "Up")

    def test52_a_finished_guarded_run_is_not_undone_by_a_later_problem(self):
        crawler = crawler_at_facing_with_grounds(Point(1, 2), "Up", {Point(1, 5): Boulder()})

        with pytest.raises(RuntimeError) as an_error:
            crawler.process("(aa)a")

        assert Boulder.boulder_found_error_description() == str(an_error.value)
        assert crawler.is_at_facing(Point(1, 4), "Up")

    def test53_more_than_one_guarded_run_can_be_processed(self):
        crawler = SurveyCrawler.at_facing(Point(1, 2), "Up")

        crawler.process("aha(aagt3)aa(ht)")

        assert crawler.is_at_facing(Point(3, -1), "Right")

    def test54_the_crawler_can_be_used_after_a_guarded_run_fails(self):
        crawler = crawler_at_facing_with_grounds(Point(1, 2), "Up", {Point(1, 4): Boulder()})

        with pytest.raises(RuntimeError):
            crawler.process("(aa)")
        crawler.process("a")

        assert crawler.is_at_facing(Point(1, 3), "Up")

    def test55_a_guarded_run_can_be_used_after_a_guarded_run_fails(self):
        crawler = crawler_at_facing_with_grounds(Point(1, 2), "Up", {Point(1, 4): Boulder()})

        with pytest.raises(RuntimeError):
            crawler.process("(aa")
        crawler.process("(ah)")

        assert crawler.is_at_facing(Point(1, 3), "Right")
