defmodule Timeclock.Scheduleing do
  alias Timeclock.Scheduling.Schedule

  @doc """
  Returns the list of schedules.

  ## Examples

      iex> list_schedules()
      [%Schedule{}, ...]

  """
  def list_schedules do
    Repo.all(Schedule)
  end

  @doc """
  Gets a single schedule.

  Raises `Ecto.NoResultsError` if the Schedule does not exist.

  ## Examples

      iex> get_schedule!(123)
      %Schedule{}

      iex> get_schedule!(456)
      ** (Ecto.NoResultsError)

  """
  def get_schedule!(id), do: Repo.get!(Schedule, id)

  @doc """
  Creates a schedule.

  ## Examples

      iex> create_schedule(%{field: value})
      {:ok, %Schedule{}}

      iex> create_schedule(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_schedule(attrs) do
    %Schedule{}
    |> Schedule.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a schedule.

  ## Examples

      iex> update_schedule(schedule, %{field: new_value})
      {:ok, %Schedule{}}

      iex> update_schedule(schedule, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_schedule(%Schedule{} = schedule, attrs) do
    schedule
    |> Schedule.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a schedule.

  ## Examples

      iex> delete_schedule(schedule)
      {:ok, %Schedule{}}

      iex> delete_schedule(schedule)
      {:error, %Ecto.Changeset{}}

  """
  def delete_schedule(%Schedule{} = schedule) do
    Repo.delete(schedule)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking schedule changes.

  ## Examples

      iex> change_schedule(schedule)
      %Ecto.Changeset{data: %Schedule{}}

  """
  def change_schedule(%Schedule{} = schedule, attrs \\ %{}) do
    Schedule.changeset(schedule, attrs)
  end

  alias Timeclock.Scheduling.Shift

  @doc """
  Returns the list of shifts.

  ## Examples

      iex> list_shifts()
      [%Shift{}, ...]

  """
  def list_shifts do
    Repo.all(Shift)
  end

  @doc """
  Gets a single shift.

  Raises `Ecto.NoResultsError` if the Shift does not exist.

  ## Examples

      iex> get_shift!(123)
      %Shift{}

      iex> get_shift!(456)
      ** (Ecto.NoResultsError)

  """
  def get_shift!(id), do: Repo.get!(Shift, id)

  @doc """
  Creates a shift.

  ## Examples

      iex> create_shift(%{field: value})
      {:ok, %Shift{}}

      iex> create_shift(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_shift(attrs) do
    %Shift{}
    |> Shift.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a shift.

  ## Examples

      iex> update_shift(shift, %{field: new_value})
      {:ok, %Shift{}}

      iex> update_shift(shift, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_shift(%Shift{} = shift, attrs) do
    shift
    |> Shift.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a shift.

  ## Examples

      iex> delete_shift(shift)
      {:ok, %Shift{}}

      iex> delete_shift(shift)
      {:error, %Ecto.Changeset{}}

  """
  def delete_shift(%Shift{} = shift) do
    Repo.delete(shift)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking shift changes.

  ## Examples

      iex> change_shift(shift)
      %Ecto.Changeset{data: %Shift{}}

  """
  def change_shift(%Shift{} = shift, attrs \\ %{}) do
    Shift.changeset(shift, attrs)
  end

  alias Timeclock.Scheduling.BreakRule

  @doc """
  Returns the list of break_rules.

  ## Examples

      iex> list_break_rules()
      [%BreakRule{}, ...]

  """
  def list_break_rules do
    Repo.all(BreakRule)
  end

  @doc """
  Gets a single break_rule.

  Raises `Ecto.NoResultsError` if the Break rule does not exist.

  ## Examples

      iex> get_break_rule!(123)
      %BreakRule{}

      iex> get_break_rule!(456)
      ** (Ecto.NoResultsError)

  """
  def get_break_rule!(id), do: Repo.get!(BreakRule, id)

  @doc """
  Creates a break_rule.

  ## Examples

      iex> create_break_rule(%{field: value})
      {:ok, %BreakRule{}}

      iex> create_break_rule(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_break_rule(attrs) do
    %BreakRule{}
    |> BreakRule.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a break_rule.

  ## Examples

      iex> update_break_rule(break_rule, %{field: new_value})
      {:ok, %BreakRule{}}

      iex> update_break_rule(break_rule, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_break_rule(%BreakRule{} = break_rule, attrs) do
    break_rule
    |> BreakRule.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a break_rule.

  ## Examples

      iex> delete_break_rule(break_rule)
      {:ok, %BreakRule{}}

      iex> delete_break_rule(break_rule)
      {:error, %Ecto.Changeset{}}

  """
  def delete_break_rule(%BreakRule{} = break_rule) do
    Repo.delete(break_rule)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking break_rule changes.

  ## Examples

      iex> change_break_rule(break_rule)
      %Ecto.Changeset{data: %BreakRule{}}

  """
  def change_break_rule(%BreakRule{} = break_rule, attrs \\ %{}) do
    BreakRule.changeset(break_rule, attrs)
  end

  alias Timeclock.Scheduling.Calendar

  @doc """
  Returns the list of calendars.

  ## Examples

      iex> list_calendars()
      [%Calendar{}, ...]

  """
  def list_calendars do
    Repo.all(Calendar)
  end

  @doc """
  Gets a single calendar.

  Raises `Ecto.NoResultsError` if the Calendar does not exist.

  ## Examples

      iex> get_calendar!(123)
      %Calendar{}

      iex> get_calendar!(456)
      ** (Ecto.NoResultsError)

  """
  def get_calendar!(id), do: Repo.get!(Calendar, id)

  @doc """
  Creates a calendar.

  ## Examples

      iex> create_calendar(%{field: value})
      {:ok, %Calendar{}}

      iex> create_calendar(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_calendar(attrs) do
    %Calendar{}
    |> Calendar.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a calendar.

  ## Examples

      iex> update_calendar(calendar, %{field: new_value})
      {:ok, %Calendar{}}

      iex> update_calendar(calendar, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_calendar(%Calendar{} = calendar, attrs) do
    calendar
    |> Calendar.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a calendar.

  ## Examples

      iex> delete_calendar(calendar)
      {:ok, %Calendar{}}

      iex> delete_calendar(calendar)
      {:error, %Ecto.Changeset{}}

  """
  def delete_calendar(%Calendar{} = calendar) do
    Repo.delete(calendar)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking calendar changes.

  ## Examples

      iex> change_calendar(calendar)
      %Ecto.Changeset{data: %Calendar{}}

  """
  def change_calendar(%Calendar{} = calendar, attrs \\ %{}) do
    Calendar.changeset(calendar, attrs)
  end
end
