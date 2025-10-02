defmodule Timeclock.SchedulingTest do
  use Timeclock.DataCase

  alias Timeclock.Scheduling

  describe "schedules" do
    alias Timeclock.Scheduling.Schedule

    import Timeclock.SchedulingFixtures

    @invalid_attrs %{start_time: nil, end_time: nil}

    test "list_schedules/0 returns all schedules" do
      schedule = schedule_fixture()
      assert Scheduling.list_schedules() == [schedule]
    end

    test "get_schedule!/1 returns the schedule with given id" do
      schedule = schedule_fixture()
      assert Scheduling.get_schedule!(schedule.id) == schedule
    end

    test "create_schedule/1 with valid data creates a schedule" do
      valid_attrs = %{start_time: ~U[2025-10-05 10:49:00Z], end_time: ~U[2025-10-05 10:49:00Z]}

      assert {:ok, %Schedule{} = schedule} = Scheduling.create_schedule(valid_attrs)
      assert schedule.start_time == ~U[2025-10-05 10:49:00Z]
      assert schedule.end_time == ~U[2025-10-05 10:49:00Z]
    end

    test "create_schedule/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Scheduling.create_schedule(@invalid_attrs)
    end

    test "update_schedule/2 with valid data updates the schedule" do
      schedule = schedule_fixture()
      update_attrs = %{start_time: ~U[2025-10-06 10:49:00Z], end_time: ~U[2025-10-06 10:49:00Z]}

      assert {:ok, %Schedule{} = schedule} = Scheduling.update_schedule(schedule, update_attrs)
      assert schedule.start_time == ~U[2025-10-06 10:49:00Z]
      assert schedule.end_time == ~U[2025-10-06 10:49:00Z]
    end

    test "update_schedule/2 with invalid data returns error changeset" do
      schedule = schedule_fixture()
      assert {:error, %Ecto.Changeset{}} = Scheduling.update_schedule(schedule, @invalid_attrs)
      assert schedule == Scheduling.get_schedule!(schedule.id)
    end

    test "delete_schedule/1 deletes the schedule" do
      schedule = schedule_fixture()
      assert {:ok, %Schedule{}} = Scheduling.delete_schedule(schedule)
      assert_raise Ecto.NoResultsError, fn -> Scheduling.get_schedule!(schedule.id) end
    end

    test "change_schedule/1 returns a schedule changeset" do
      schedule = schedule_fixture()
      assert %Ecto.Changeset{} = Scheduling.change_schedule(schedule)
    end
  end

  describe "shifts" do
    alias Timeclock.Scheduling.Shift

    import Timeclock.SchedulingFixtures

    @invalid_attrs %{name: nil, start_time: nil, end_time: nil}

    test "list_shifts/0 returns all shifts" do
      shift = shift_fixture()
      assert Scheduling.list_shifts() == [shift]
    end

    test "get_shift!/1 returns the shift with given id" do
      shift = shift_fixture()
      assert Scheduling.get_shift!(shift.id) == shift
    end

    test "create_shift/1 with valid data creates a shift" do
      valid_attrs = %{name: "some name", start_time: ~T[14:00:00], end_time: ~T[14:00:00]}

      assert {:ok, %Shift{} = shift} = Scheduling.create_shift(valid_attrs)
      assert shift.name == "some name"
      assert shift.start_time == ~T[14:00:00]
      assert shift.end_time == ~T[14:00:00]
    end

    test "create_shift/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Scheduling.create_shift(@invalid_attrs)
    end

    test "update_shift/2 with valid data updates the shift" do
      shift = shift_fixture()

      update_attrs = %{
        name: "some updated name",
        start_time: ~T[15:01:01],
        end_time: ~T[15:01:01]
      }

      assert {:ok, %Shift{} = shift} = Scheduling.update_shift(shift, update_attrs)
      assert shift.name == "some updated name"
      assert shift.start_time == ~T[15:01:01]
      assert shift.end_time == ~T[15:01:01]
    end

    test "update_shift/2 with invalid data returns error changeset" do
      shift = shift_fixture()
      assert {:error, %Ecto.Changeset{}} = Scheduling.update_shift(shift, @invalid_attrs)
      assert shift == Scheduling.get_shift!(shift.id)
    end

    test "delete_shift/1 deletes the shift" do
      shift = shift_fixture()
      assert {:ok, %Shift{}} = Scheduling.delete_shift(shift)
      assert_raise Ecto.NoResultsError, fn -> Scheduling.get_shift!(shift.id) end
    end

    test "change_shift/1 returns a shift changeset" do
      shift = shift_fixture()
      assert %Ecto.Changeset{} = Scheduling.change_shift(shift)
    end
  end

  describe "break_rules" do
    alias Timeclock.Scheduling.BreakRule

    import Timeclock.SchedulingFixtures

    @invalid_attrs %{name: nil, duration_minutes: nil, applies_after_hours: nil}

    test "list_break_rules/0 returns all break_rules" do
      break_rule = break_rule_fixture()
      assert Scheduling.list_break_rules() == [break_rule]
    end

    test "get_break_rule!/1 returns the break_rule with given id" do
      break_rule = break_rule_fixture()
      assert Scheduling.get_break_rule!(break_rule.id) == break_rule
    end

    test "create_break_rule/1 with valid data creates a break_rule" do
      valid_attrs = %{name: "some name", duration_minutes: 42, applies_after_hours: 42}

      assert {:ok, %BreakRule{} = break_rule} = Scheduling.create_break_rule(valid_attrs)
      assert break_rule.name == "some name"
      assert break_rule.duration_minutes == 42
      assert break_rule.applies_after_hours == 42
    end

    test "create_break_rule/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Scheduling.create_break_rule(@invalid_attrs)
    end

    test "update_break_rule/2 with valid data updates the break_rule" do
      break_rule = break_rule_fixture()
      update_attrs = %{name: "some updated name", duration_minutes: 43, applies_after_hours: 43}

      assert {:ok, %BreakRule{} = break_rule} =
               Scheduling.update_break_rule(break_rule, update_attrs)

      assert break_rule.name == "some updated name"
      assert break_rule.duration_minutes == 43
      assert break_rule.applies_after_hours == 43
    end

    test "update_break_rule/2 with invalid data returns error changeset" do
      break_rule = break_rule_fixture()

      assert {:error, %Ecto.Changeset{}} =
               Scheduling.update_break_rule(break_rule, @invalid_attrs)

      assert break_rule == Scheduling.get_break_rule!(break_rule.id)
    end

    test "delete_break_rule/1 deletes the break_rule" do
      break_rule = break_rule_fixture()
      assert {:ok, %BreakRule{}} = Scheduling.delete_break_rule(break_rule)
      assert_raise Ecto.NoResultsError, fn -> Scheduling.get_break_rule!(break_rule.id) end
    end

    test "change_break_rule/1 returns a break_rule changeset" do
      break_rule = break_rule_fixture()
      assert %Ecto.Changeset{} = Scheduling.change_break_rule(break_rule)
    end
  end

  describe "calendars" do
    alias Timeclock.Scheduling.Calendar

    import Timeclock.SchedulingFixtures

    @invalid_attrs %{name: nil, timezone: nil, work_days: nil}

    test "list_calendars/0 returns all calendars" do
      calendar = calendar_fixture()
      assert Scheduling.list_calendars() == [calendar]
    end

    test "get_calendar!/1 returns the calendar with given id" do
      calendar = calendar_fixture()
      assert Scheduling.get_calendar!(calendar.id) == calendar
    end

    test "create_calendar/1 with valid data creates a calendar" do
      valid_attrs = %{
        name: "some name",
        timezone: "some timezone",
        work_days: ["option1", "option2"]
      }

      assert {:ok, %Calendar{} = calendar} = Scheduling.create_calendar(valid_attrs)
      assert calendar.name == "some name"
      assert calendar.timezone == "some timezone"
      assert calendar.work_days == ["option1", "option2"]
    end

    test "create_calendar/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Scheduling.create_calendar(@invalid_attrs)
    end

    test "update_calendar/2 with valid data updates the calendar" do
      calendar = calendar_fixture()

      update_attrs = %{
        name: "some updated name",
        timezone: "some updated timezone",
        work_days: ["option1"]
      }

      assert {:ok, %Calendar{} = calendar} = Scheduling.update_calendar(calendar, update_attrs)
      assert calendar.name == "some updated name"
      assert calendar.timezone == "some updated timezone"
      assert calendar.work_days == ["option1"]
    end

    test "update_calendar/2 with invalid data returns error changeset" do
      calendar = calendar_fixture()
      assert {:error, %Ecto.Changeset{}} = Scheduling.update_calendar(calendar, @invalid_attrs)
      assert calendar == Scheduling.get_calendar!(calendar.id)
    end

    test "delete_calendar/1 deletes the calendar" do
      calendar = calendar_fixture()
      assert {:ok, %Calendar{}} = Scheduling.delete_calendar(calendar)
      assert_raise Ecto.NoResultsError, fn -> Scheduling.get_calendar!(calendar.id) end
    end

    test "change_calendar/1 returns a calendar changeset" do
      calendar = calendar_fixture()
      assert %Ecto.Changeset{} = Scheduling.change_calendar(calendar)
    end
  end
end
