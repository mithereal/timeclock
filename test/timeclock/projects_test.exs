defmodule Timeclock.ProjectsTest do
  use Timeclock.DataCase

  alias Timeclock.Projects

  describe "projects" do
    alias Timeclock.Projects.Project

    import Timeclock.ProjectsFixtures

    @invalid_attrs %{name: nil, start_date: nil, end_date: nil}

    test "list_projects/0 returns all projects" do
      project = project_fixture()
      assert Projects.list_projects() == [project]
    end

    test "get_project!/1 returns the project with given id" do
      project = project_fixture()
      assert Projects.get_project!(project.id) == project
    end

    test "create_project/1 with valid data creates a project" do
      valid_attrs = %{
        name: "some name",
        start_date: ~U[2025-10-05 10:49:00Z],
        end_date: ~U[2025-10-05 10:49:00Z]
      }

      assert {:ok, %Project{} = project} = Projects.create_project(valid_attrs)
      assert project.name == "some name"
      assert project.start_date == ~U[2025-10-05 10:49:00Z]
      assert project.end_date == ~U[2025-10-05 10:49:00Z]
    end

    test "create_project/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Projects.create_project(@invalid_attrs)
    end

    test "update_project/2 with valid data updates the project" do
      project = project_fixture()

      update_attrs = %{
        name: "some updated name",
        start_date: ~U[2025-10-06 10:49:00Z],
        end_date: ~U[2025-10-06 10:49:00Z]
      }

      assert {:ok, %Project{} = project} = Projects.update_project(project, update_attrs)
      assert project.name == "some updated name"
      assert project.start_date == ~U[2025-10-06 10:49:00Z]
      assert project.end_date == ~U[2025-10-06 10:49:00Z]
    end

    test "update_project/2 with invalid data returns error changeset" do
      project = project_fixture()
      assert {:error, %Ecto.Changeset{}} = Projects.update_project(project, @invalid_attrs)
      assert project == Projects.get_project!(project.id)
    end

    test "delete_project/1 deletes the project" do
      project = project_fixture()
      assert {:ok, %Project{}} = Projects.delete_project(project)
      assert_raise Ecto.NoResultsError, fn -> Projects.get_project!(project.id) end
    end

    test "change_project/1 returns a project changeset" do
      project = project_fixture()
      assert %Ecto.Changeset{} = Projects.change_project(project)
    end
  end

  describe "tasks" do
    alias Timeclock.Projects.Task

    import Timeclock.ProjectsFixtures

    @invalid_attrs %{name: nil, description: nil, due_date: nil}

    test "list_tasks/0 returns all tasks" do
      task = task_fixture()
      assert Projects.list_tasks() == [task]
    end

    test "get_task!/1 returns the task with given id" do
      task = task_fixture()
      assert Projects.get_task!(task.id) == task
    end

    test "create_task/1 with valid data creates a task" do
      valid_attrs = %{
        name: "some name",
        description: "some description",
        due_date: ~U[2025-10-05 10:49:00Z]
      }

      assert {:ok, %Task{} = task} = Projects.create_task(valid_attrs)
      assert task.name == "some name"
      assert task.description == "some description"
      assert task.due_date == ~U[2025-10-05 10:49:00Z]
    end

    test "create_task/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Projects.create_task(@invalid_attrs)
    end

    test "update_task/2 with valid data updates the task" do
      task = task_fixture()

      update_attrs = %{
        name: "some updated name",
        description: "some updated description",
        due_date: ~U[2025-10-06 10:49:00Z]
      }

      assert {:ok, %Task{} = task} = Projects.update_task(task, update_attrs)
      assert task.name == "some updated name"
      assert task.description == "some updated description"
      assert task.due_date == ~U[2025-10-06 10:49:00Z]
    end

    test "update_task/2 with invalid data returns error changeset" do
      task = task_fixture()
      assert {:error, %Ecto.Changeset{}} = Projects.update_task(task, @invalid_attrs)
      assert task == Projects.get_task!(task.id)
    end

    test "delete_task/1 deletes the task" do
      task = task_fixture()
      assert {:ok, %Task{}} = Projects.delete_task(task)
      assert_raise Ecto.NoResultsError, fn -> Projects.get_task!(task.id) end
    end

    test "change_task/1 returns a task changeset" do
      task = task_fixture()
      assert %Ecto.Changeset{} = Projects.change_task(task)
    end
  end

  describe "assignments" do
    alias Timeclock.Projects.Assignment

    import Timeclock.ProjectsFixtures

    @invalid_attrs %{start_date: nil, end_date: nil}

    test "list_assignments/0 returns all assignments" do
      assignment = assignment_fixture()
      assert Projects.list_assignments() == [assignment]
    end

    test "get_assignment!/1 returns the assignment with given id" do
      assignment = assignment_fixture()
      assert Projects.get_assignment!(assignment.id) == assignment
    end

    test "create_assignment/1 with valid data creates a assignment" do
      valid_attrs = %{start_date: ~U[2025-10-05 10:49:00Z], end_date: ~U[2025-10-05 10:49:00Z]}

      assert {:ok, %Assignment{} = assignment} = Projects.create_assignment(valid_attrs)
      assert assignment.start_date == ~U[2025-10-05 10:49:00Z]
      assert assignment.end_date == ~U[2025-10-05 10:49:00Z]
    end

    test "create_assignment/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Projects.create_assignment(@invalid_attrs)
    end

    test "update_assignment/2 with valid data updates the assignment" do
      assignment = assignment_fixture()
      update_attrs = %{start_date: ~U[2025-10-06 10:49:00Z], end_date: ~U[2025-10-06 10:49:00Z]}

      assert {:ok, %Assignment{} = assignment} =
               Projects.update_assignment(assignment, update_attrs)

      assert assignment.start_date == ~U[2025-10-06 10:49:00Z]
      assert assignment.end_date == ~U[2025-10-06 10:49:00Z]
    end

    test "update_assignment/2 with invalid data returns error changeset" do
      assignment = assignment_fixture()
      assert {:error, %Ecto.Changeset{}} = Projects.update_assignment(assignment, @invalid_attrs)
      assert assignment == Projects.get_assignment!(assignment.id)
    end

    test "delete_assignment/1 deletes the assignment" do
      assignment = assignment_fixture()
      assert {:ok, %Assignment{}} = Projects.delete_assignment(assignment)
      assert_raise Ecto.NoResultsError, fn -> Projects.get_assignment!(assignment.id) end
    end

    test "change_assignment/1 returns a assignment changeset" do
      assignment = assignment_fixture()
      assert %Ecto.Changeset{} = Projects.change_assignment(assignment)
    end
  end
end
