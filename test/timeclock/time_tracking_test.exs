defmodule Timeclock.TimeTrackingTest do
  use Timeclock.DataCase

  alias Timeclock.TimeTracking

  describe "time_entries" do
    alias Timeclock.TimeTracking.TimeEntry

    import Timeclock.TimeTrackingFixtures

    @invalid_attrs %{clock_in: nil, clock_out: nil, total_hours: nil}

    test "list_time_entries/0 returns all time_entries" do
      time_entry = time_entry_fixture()
      assert TimeTracking.list_time_entries() == [time_entry]
    end

    test "get_time_entry!/1 returns the time_entry with given id" do
      time_entry = time_entry_fixture()
      assert TimeTracking.get_time_entry!(time_entry.id) == time_entry
    end

    test "create_time_entry/1 with valid data creates a time_entry" do
      valid_attrs = %{
        clock_in: ~U[2025-10-05 10:49:00Z],
        clock_out: ~U[2025-10-05 10:49:00Z],
        total_hours: 120.5
      }

      assert {:ok, %TimeEntry{} = time_entry} = TimeTracking.create_time_entry(valid_attrs)
      assert time_entry.clock_in == ~U[2025-10-05 10:49:00Z]
      assert time_entry.clock_out == ~U[2025-10-05 10:49:00Z]
      assert time_entry.total_hours == 120.5
    end

    test "create_time_entry/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = TimeTracking.create_time_entry(@invalid_attrs)
    end

    test "update_time_entry/2 with valid data updates the time_entry" do
      time_entry = time_entry_fixture()

      update_attrs = %{
        clock_in: ~U[2025-10-06 10:49:00Z],
        clock_out: ~U[2025-10-06 10:49:00Z],
        total_hours: 456.7
      }

      assert {:ok, %TimeEntry{} = time_entry} =
               TimeTracking.update_time_entry(time_entry, update_attrs)

      assert time_entry.clock_in == ~U[2025-10-06 10:49:00Z]
      assert time_entry.clock_out == ~U[2025-10-06 10:49:00Z]
      assert time_entry.total_hours == 456.7
    end

    test "update_time_entry/2 with invalid data returns error changeset" do
      time_entry = time_entry_fixture()

      assert {:error, %Ecto.Changeset{}} =
               TimeTracking.update_time_entry(time_entry, @invalid_attrs)

      assert time_entry == TimeTracking.get_time_entry!(time_entry.id)
    end

    test "delete_time_entry/1 deletes the time_entry" do
      time_entry = time_entry_fixture()
      assert {:ok, %TimeEntry{}} = TimeTracking.delete_time_entry(time_entry)
      assert_raise Ecto.NoResultsError, fn -> TimeTracking.get_time_entry!(time_entry.id) end
    end

    test "change_time_entry/1 returns a time_entry changeset" do
      time_entry = time_entry_fixture()
      assert %Ecto.Changeset{} = TimeTracking.change_time_entry(time_entry)
    end
  end

  describe "geolocations" do
    alias Timeclock.TimeTracking.Geolocation

    import Timeclock.TimeTrackingFixtures

    @invalid_attrs %{latitude: nil, longitude: nil, recorded_at: nil}

    test "list_geolocations/0 returns all geolocations" do
      geolocation = geolocation_fixture()
      assert TimeTracking.list_geolocations() == [geolocation]
    end

    test "get_geolocation!/1 returns the geolocation with given id" do
      geolocation = geolocation_fixture()
      assert TimeTracking.get_geolocation!(geolocation.id) == geolocation
    end

    test "create_geolocation/1 with valid data creates a geolocation" do
      valid_attrs = %{latitude: 120.5, longitude: 120.5, recorded_at: ~U[2025-10-05 10:49:00Z]}

      assert {:ok, %Geolocation{} = geolocation} = TimeTracking.create_geolocation(valid_attrs)
      assert geolocation.latitude == 120.5
      assert geolocation.longitude == 120.5
      assert geolocation.recorded_at == ~U[2025-10-05 10:49:00Z]
    end

    test "create_geolocation/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = TimeTracking.create_geolocation(@invalid_attrs)
    end

    test "update_geolocation/2 with valid data updates the geolocation" do
      geolocation = geolocation_fixture()
      update_attrs = %{latitude: 456.7, longitude: 456.7, recorded_at: ~U[2025-10-06 10:49:00Z]}

      assert {:ok, %Geolocation{} = geolocation} =
               TimeTracking.update_geolocation(geolocation, update_attrs)

      assert geolocation.latitude == 456.7
      assert geolocation.longitude == 456.7
      assert geolocation.recorded_at == ~U[2025-10-06 10:49:00Z]
    end

    test "update_geolocation/2 with invalid data returns error changeset" do
      geolocation = geolocation_fixture()

      assert {:error, %Ecto.Changeset{}} =
               TimeTracking.update_geolocation(geolocation, @invalid_attrs)

      assert geolocation == TimeTracking.get_geolocation!(geolocation.id)
    end

    test "delete_geolocation/1 deletes the geolocation" do
      geolocation = geolocation_fixture()
      assert {:ok, %Geolocation{}} = TimeTracking.delete_geolocation(geolocation)
      assert_raise Ecto.NoResultsError, fn -> TimeTracking.get_geolocation!(geolocation.id) end
    end

    test "change_geolocation/1 returns a geolocation changeset" do
      geolocation = geolocation_fixture()
      assert %Ecto.Changeset{} = TimeTracking.change_geolocation(geolocation)
    end
  end
end
