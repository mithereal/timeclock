defmodule Timeclock.TimeTrackingFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Timeclock.TimeTracking` context.
  """

  @doc """
  Generate a time_entry.
  """
  def time_entry_fixture(attrs \\ %{}) do
    {:ok, time_entry} =
      attrs
      |> Enum.into(%{
        clock_in: ~U[2025-10-05 10:49:00Z],
        clock_out: ~U[2025-10-05 10:49:00Z],
        total_hours: 120.5
      })
      |> Timeclock.TimeTracking.create_time_entry()

    time_entry
  end

  @doc """
  Generate a geolocation.
  """
  def geolocation_fixture(attrs \\ %{}) do
    {:ok, geolocation} =
      attrs
      |> Enum.into(%{
        latitude: 120.5,
        longitude: 120.5,
        recorded_at: ~U[2025-10-05 10:49:00Z]
      })
      |> Timeclock.TimeTracking.create_geolocation()

    geolocation
  end
end
