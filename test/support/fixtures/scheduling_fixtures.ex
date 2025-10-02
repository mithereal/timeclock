defmodule Timeclock.SchedulingFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Timeclock.Scheduling` context.
  """

  @doc """
  Generate a schedule.
  """
  def schedule_fixture(attrs \\ %{}) do
    {:ok, schedule} =
      attrs
      |> Enum.into(%{
        end_time: ~U[2025-10-05 10:49:00Z],
        start_time: ~U[2025-10-05 10:49:00Z]
      })
      |> Timeclock.Scheduling.create_schedule()

    schedule
  end

  @doc """
  Generate a shift.
  """
  def shift_fixture(attrs \\ %{}) do
    {:ok, shift} =
      attrs
      |> Enum.into(%{
        end_time: ~T[14:00:00],
        name: "some name",
        start_time: ~T[14:00:00]
      })
      |> Timeclock.Scheduling.create_shift()

    shift
  end

  @doc """
  Generate a break_rule.
  """
  def break_rule_fixture(attrs \\ %{}) do
    {:ok, break_rule} =
      attrs
      |> Enum.into(%{
        applies_after_hours: 42,
        duration_minutes: 42,
        name: "some name"
      })
      |> Timeclock.Scheduling.create_break_rule()

    break_rule
  end

  @doc """
  Generate a calendar.
  """
  def calendar_fixture(attrs \\ %{}) do
    {:ok, calendar} =
      attrs
      |> Enum.into(%{
        name: "some name",
        timezone: "some timezone",
        work_days: ["option1", "option2"]
      })
      |> Timeclock.Scheduling.create_calendar()

    calendar
  end
end
