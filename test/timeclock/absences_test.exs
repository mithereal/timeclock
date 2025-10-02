defmodule Timeclock.AbsencesTest do
  use Timeclock.DataCase

  alias Timeclock.Absences

  describe "absences" do
    alias Timeclock.Absences.Absence

    import Timeclock.AbsencesFixtures

    @invalid_attrs %{reason: nil, status: nil, start_date: nil, end_date: nil}

    test "list_absences/0 returns all absences" do
      absence = absence_fixture()
      assert Absences.list_absences() == [absence]
    end

    test "get_absence!/1 returns the absence with given id" do
      absence = absence_fixture()
      assert Absences.get_absence!(absence.id) == absence
    end

    test "create_absence/1 with valid data creates a absence" do
      valid_attrs = %{
        reason: "some reason",
        status: "some status",
        start_date: ~U[2025-10-05 10:49:00Z],
        end_date: ~U[2025-10-05 10:49:00Z]
      }

      assert {:ok, %Absence{} = absence} = Absences.create_absence(valid_attrs)
      assert absence.reason == "some reason"
      assert absence.status == "some status"
      assert absence.start_date == ~U[2025-10-05 10:49:00Z]
      assert absence.end_date == ~U[2025-10-05 10:49:00Z]
    end

    test "create_absence/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Absences.create_absence(@invalid_attrs)
    end

    test "update_absence/2 with valid data updates the absence" do
      absence = absence_fixture()

      update_attrs = %{
        reason: "some updated reason",
        status: "some updated status",
        start_date: ~U[2025-10-06 10:49:00Z],
        end_date: ~U[2025-10-06 10:49:00Z]
      }

      assert {:ok, %Absence{} = absence} = Absences.update_absence(absence, update_attrs)
      assert absence.reason == "some updated reason"
      assert absence.status == "some updated status"
      assert absence.start_date == ~U[2025-10-06 10:49:00Z]
      assert absence.end_date == ~U[2025-10-06 10:49:00Z]
    end

    test "update_absence/2 with invalid data returns error changeset" do
      absence = absence_fixture()
      assert {:error, %Ecto.Changeset{}} = Absences.update_absence(absence, @invalid_attrs)
      assert absence == Absences.get_absence!(absence.id)
    end

    test "delete_absence/1 deletes the absence" do
      absence = absence_fixture()
      assert {:ok, %Absence{}} = Absences.delete_absence(absence)
      assert_raise Ecto.NoResultsError, fn -> Absences.get_absence!(absence.id) end
    end

    test "change_absence/1 returns a absence changeset" do
      absence = absence_fixture()
      assert %Ecto.Changeset{} = Absences.change_absence(absence)
    end
  end

  describe "absence_definitions" do
    alias Timeclock.Absences.AbsenceDefinition

    import Timeclock.AbsencesFixtures

    @invalid_attrs %{name: nil, description: nil, requires_approval: nil, max_days_per_year: nil}

    test "list_absence_definitions/0 returns all absence_definitions" do
      absence_definition = absence_definition_fixture()
      assert Absences.list_absence_definitions() == [absence_definition]
    end

    test "get_absence_definition!/1 returns the absence_definition with given id" do
      absence_definition = absence_definition_fixture()
      assert Absences.get_absence_definition!(absence_definition.id) == absence_definition
    end

    test "create_absence_definition/1 with valid data creates a absence_definition" do
      valid_attrs = %{
        name: "some name",
        description: "some description",
        requires_approval: true,
        max_days_per_year: 42
      }

      assert {:ok, %AbsenceDefinition{} = absence_definition} =
               Absences.create_absence_definition(valid_attrs)

      assert absence_definition.name == "some name"
      assert absence_definition.description == "some description"
      assert absence_definition.requires_approval == true
      assert absence_definition.max_days_per_year == 42
    end

    test "create_absence_definition/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Absences.create_absence_definition(@invalid_attrs)
    end

    test "update_absence_definition/2 with valid data updates the absence_definition" do
      absence_definition = absence_definition_fixture()

      update_attrs = %{
        name: "some updated name",
        description: "some updated description",
        requires_approval: false,
        max_days_per_year: 43
      }

      assert {:ok, %AbsenceDefinition{} = absence_definition} =
               Absences.update_absence_definition(absence_definition, update_attrs)

      assert absence_definition.name == "some updated name"
      assert absence_definition.description == "some updated description"
      assert absence_definition.requires_approval == false
      assert absence_definition.max_days_per_year == 43
    end

    test "update_absence_definition/2 with invalid data returns error changeset" do
      absence_definition = absence_definition_fixture()

      assert {:error, %Ecto.Changeset{}} =
               Absences.update_absence_definition(absence_definition, @invalid_attrs)

      assert absence_definition == Absences.get_absence_definition!(absence_definition.id)
    end

    test "delete_absence_definition/1 deletes the absence_definition" do
      absence_definition = absence_definition_fixture()
      assert {:ok, %AbsenceDefinition{}} = Absences.delete_absence_definition(absence_definition)

      assert_raise Ecto.NoResultsError, fn ->
        Absences.get_absence_definition!(absence_definition.id)
      end
    end

    test "change_absence_definition/1 returns a absence_definition changeset" do
      absence_definition = absence_definition_fixture()
      assert %Ecto.Changeset{} = Absences.change_absence_definition(absence_definition)
    end
  end

  describe "approval_requests" do
    alias Timeclock.Absences.ApprovalRequest

    import Timeclock.AbsencesFixtures

    @invalid_attrs %{status: nil, requested_at: nil, approved_at: nil}

    test "list_approval_requests/0 returns all approval_requests" do
      approval_request = approval_request_fixture()
      assert Absences.list_approval_requests() == [approval_request]
    end

    test "get_approval_request!/1 returns the approval_request with given id" do
      approval_request = approval_request_fixture()
      assert Absences.get_approval_request!(approval_request.id) == approval_request
    end

    test "create_approval_request/1 with valid data creates a approval_request" do
      valid_attrs = %{
        status: "some status",
        requested_at: ~U[2025-10-05 10:49:00Z],
        approved_at: ~U[2025-10-05 10:49:00Z]
      }

      assert {:ok, %ApprovalRequest{} = approval_request} =
               Absences.create_approval_request(valid_attrs)

      assert approval_request.status == "some status"
      assert approval_request.requested_at == ~U[2025-10-05 10:49:00Z]
      assert approval_request.approved_at == ~U[2025-10-05 10:49:00Z]
    end

    test "create_approval_request/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Absences.create_approval_request(@invalid_attrs)
    end

    test "update_approval_request/2 with valid data updates the approval_request" do
      approval_request = approval_request_fixture()

      update_attrs = %{
        status: "some updated status",
        requested_at: ~U[2025-10-06 10:49:00Z],
        approved_at: ~U[2025-10-06 10:49:00Z]
      }

      assert {:ok, %ApprovalRequest{} = approval_request} =
               Absences.update_approval_request(approval_request, update_attrs)

      assert approval_request.status == "some updated status"
      assert approval_request.requested_at == ~U[2025-10-06 10:49:00Z]
      assert approval_request.approved_at == ~U[2025-10-06 10:49:00Z]
    end

    test "update_approval_request/2 with invalid data returns error changeset" do
      approval_request = approval_request_fixture()

      assert {:error, %Ecto.Changeset{}} =
               Absences.update_approval_request(approval_request, @invalid_attrs)

      assert approval_request == Absences.get_approval_request!(approval_request.id)
    end

    test "delete_approval_request/1 deletes the approval_request" do
      approval_request = approval_request_fixture()
      assert {:ok, %ApprovalRequest{}} = Absences.delete_approval_request(approval_request)

      assert_raise Ecto.NoResultsError, fn ->
        Absences.get_approval_request!(approval_request.id)
      end
    end

    test "change_approval_request/1 returns a approval_request changeset" do
      approval_request = approval_request_fixture()
      assert %Ecto.Changeset{} = Absences.change_approval_request(approval_request)
    end
  end
end
