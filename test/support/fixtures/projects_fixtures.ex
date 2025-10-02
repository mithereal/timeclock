defmodule Timeclock.ProjectsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Timeclock.Projects` context.
  """

  @doc """
  Generate a project.
  """
  def project_fixture(attrs \\ %{}) do
    {:ok, project} =
      attrs
      |> Enum.into(%{
        end_date: ~U[2025-10-05 10:49:00Z],
        name: "some name",
        start_date: ~U[2025-10-05 10:49:00Z]
      })
      |> Timeclock.Projects.create_project()

    project
  end

  @doc """
  Generate a task.
  """
  def task_fixture(attrs \\ %{}) do
    {:ok, task} =
      attrs
      |> Enum.into(%{
        description: "some description",
        due_date: ~U[2025-10-05 10:49:00Z],
        name: "some name"
      })
      |> Timeclock.Projects.create_task()

    task
  end

  @doc """
  Generate a assignment.
  """
  def assignment_fixture(attrs \\ %{}) do
    {:ok, assignment} =
      attrs
      |> Enum.into(%{
        end_date: ~U[2025-10-05 10:49:00Z],
        start_date: ~U[2025-10-05 10:49:00Z]
      })
      |> Timeclock.Projects.create_assignment()

    assignment
  end
end
