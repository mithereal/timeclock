defmodule Timeclock.TimeTracking do
  @moduledoc """
  The TimeTracking context.
  """

  import Ecto.Query, warn: false
  alias Timeclock.Repo

  alias Timeclock.TimeTracking.TimeEntry

  @doc """
  Returns the list of time_entries.

  ## Examples

      iex> list_time_entries()
      [%TimeEntry{}, ...]

  """
  def list_time_entries do
    Repo.all(TimeEntry)
  end

  @doc """
  Gets a single time_entry.

  Raises `Ecto.NoResultsError` if the Time entry does not exist.

  ## Examples

      iex> get_time_entry!(123)
      %TimeEntry{}

      iex> get_time_entry!(456)
      ** (Ecto.NoResultsError)

  """
  def get_time_entry!(id), do: Repo.get!(TimeEntry, id)

  @doc """
  Creates a time_entry.

  ## Examples

      iex> create_time_entry(%{field: value})
      {:ok, %TimeEntry{}}

      iex> create_time_entry(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_time_entry(attrs) do
    %TimeEntry{}
    |> TimeEntry.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a time_entry.

  ## Examples

      iex> update_time_entry(time_entry, %{field: new_value})
      {:ok, %TimeEntry{}}

      iex> update_time_entry(time_entry, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_time_entry(%TimeEntry{} = time_entry, attrs) do
    time_entry
    |> TimeEntry.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a time_entry.

  ## Examples

      iex> delete_time_entry(time_entry)
      {:ok, %TimeEntry{}}

      iex> delete_time_entry(time_entry)
      {:error, %Ecto.Changeset{}}

  """
  def delete_time_entry(%TimeEntry{} = time_entry) do
    Repo.delete(time_entry)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking time_entry changes.

  ## Examples

      iex> change_time_entry(time_entry)
      %Ecto.Changeset{data: %TimeEntry{}}

  """
  def change_time_entry(%TimeEntry{} = time_entry, attrs \\ %{}) do
    TimeEntry.changeset(time_entry, attrs)
  end

  alias Timeclock.TimeTracking.Geolocation

  @doc """
  Returns the list of geolocations.

  ## Examples

      iex> list_geolocations()
      [%Geolocation{}, ...]

  """
  def list_geolocations do
    Repo.all(Geolocation)
  end

  @doc """
  Gets a single geolocation.

  Raises `Ecto.NoResultsError` if the Geolocation does not exist.

  ## Examples

      iex> get_geolocation!(123)
      %Geolocation{}

      iex> get_geolocation!(456)
      ** (Ecto.NoResultsError)

  """
  def get_geolocation!(id), do: Repo.get!(Geolocation, id)

  @doc """
  Creates a geolocation.

  ## Examples

      iex> create_geolocation(%{field: value})
      {:ok, %Geolocation{}}

      iex> create_geolocation(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_geolocation(attrs) do
    %Geolocation{}
    |> Geolocation.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a geolocation.

  ## Examples

      iex> update_geolocation(geolocation, %{field: new_value})
      {:ok, %Geolocation{}}

      iex> update_geolocation(geolocation, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_geolocation(%Geolocation{} = geolocation, attrs) do
    geolocation
    |> Geolocation.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a geolocation.

  ## Examples

      iex> delete_geolocation(geolocation)
      {:ok, %Geolocation{}}

      iex> delete_geolocation(geolocation)
      {:error, %Ecto.Changeset{}}

  """
  def delete_geolocation(%Geolocation{} = geolocation) do
    Repo.delete(geolocation)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking geolocation changes.

  ## Examples

      iex> change_geolocation(geolocation)
      %Ecto.Changeset{data: %Geolocation{}}

  """
  def change_geolocation(%Geolocation{} = geolocation, attrs \\ %{}) do
    Geolocation.changeset(geolocation, attrs)
  end
end
