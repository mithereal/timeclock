defmodule Timeclock.AbsencesFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Timeclock.Absences` context.
  """

  @doc """
  Generate a absence.
  """
  def absence_fixture(attrs \\ %{}) do
    {:ok, absence} =
      attrs
      |> Enum.into(%{
        end_date: ~U[2025-10-05 10:49:00Z],
        reason: "some reason",
        start_date: ~U[2025-10-05 10:49:00Z],
        status: "some status"
      })
      |> Timeclock.Absences.create_absence()

    absence
  end

  @doc """
  Generate a absence_definition.
  """
  def absence_definition_fixture(attrs \\ %{}) do
    {:ok, absence_definition} =
      attrs
      |> Enum.into(%{
        description: "some description",
        max_days_per_year: 42,
        name: "some name",
        requires_approval: true
      })
      |> Timeclock.Absences.create_absence_definition()

    absence_definition
  end

  @doc """
  Generate a approval_request.
  """
  def approval_request_fixture(attrs \\ %{}) do
    {:ok, approval_request} =
      attrs
      |> Enum.into(%{
        approved_at: ~U[2025-10-05 10:49:00Z],
        requested_at: ~U[2025-10-05 10:49:00Z],
        status: "some status"
      })
      |> Timeclock.Absences.create_approval_request()

    approval_request
  end
end
