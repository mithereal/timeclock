defmodule Timeclock.Absences do
  @moduledoc """
  The Absences context.
  """

  import Ecto.Query, warn: false
  alias Timeclock.Repo

  alias Timeclock.Absences.Absence

  @doc """
  Returns the list of absences.

  ## Examples

      iex> list_absences()
      [%Absence{}, ...]

  """
  def list_absences do
    Repo.all(Absence)
  end

  @doc """
  Gets a single absence.

  Raises `Ecto.NoResultsError` if the Absence does not exist.

  ## Examples

      iex> get_absence!(123)
      %Absence{}

      iex> get_absence!(456)
      ** (Ecto.NoResultsError)

  """
  def get_absence!(id), do: Repo.get!(Absence, id)

  @doc """
  Creates a absence.

  ## Examples

      iex> create_absence(%{field: value})
      {:ok, %Absence{}}

      iex> create_absence(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_absence(attrs) do
    %Absence{}
    |> Absence.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a absence.

  ## Examples

      iex> update_absence(absence, %{field: new_value})
      {:ok, %Absence{}}

      iex> update_absence(absence, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_absence(%Absence{} = absence, attrs) do
    absence
    |> Absence.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a absence.

  ## Examples

      iex> delete_absence(absence)
      {:ok, %Absence{}}

      iex> delete_absence(absence)
      {:error, %Ecto.Changeset{}}

  """
  def delete_absence(%Absence{} = absence) do
    Repo.delete(absence)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking absence changes.

  ## Examples

      iex> change_absence(absence)
      %Ecto.Changeset{data: %Absence{}}

  """
  def change_absence(%Absence{} = absence, attrs \\ %{}) do
    Absence.changeset(absence, attrs)
  end

  alias Timeclock.Absences.AbsenceDefinition

  @doc """
  Returns the list of absence_definitions.

  ## Examples

      iex> list_absence_definitions()
      [%AbsenceDefinition{}, ...]

  """
  def list_absence_definitions do
    Repo.all(AbsenceDefinition)
  end

  @doc """
  Gets a single absence_definition.

  Raises `Ecto.NoResultsError` if the Absence definition does not exist.

  ## Examples

      iex> get_absence_definition!(123)
      %AbsenceDefinition{}

      iex> get_absence_definition!(456)
      ** (Ecto.NoResultsError)

  """
  def get_absence_definition!(id), do: Repo.get!(AbsenceDefinition, id)

  @doc """
  Creates a absence_definition.

  ## Examples

      iex> create_absence_definition(%{field: value})
      {:ok, %AbsenceDefinition{}}

      iex> create_absence_definition(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_absence_definition(attrs) do
    %AbsenceDefinition{}
    |> AbsenceDefinition.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a absence_definition.

  ## Examples

      iex> update_absence_definition(absence_definition, %{field: new_value})
      {:ok, %AbsenceDefinition{}}

      iex> update_absence_definition(absence_definition, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_absence_definition(%AbsenceDefinition{} = absence_definition, attrs) do
    absence_definition
    |> AbsenceDefinition.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a absence_definition.

  ## Examples

      iex> delete_absence_definition(absence_definition)
      {:ok, %AbsenceDefinition{}}

      iex> delete_absence_definition(absence_definition)
      {:error, %Ecto.Changeset{}}

  """
  def delete_absence_definition(%AbsenceDefinition{} = absence_definition) do
    Repo.delete(absence_definition)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking absence_definition changes.

  ## Examples

      iex> change_absence_definition(absence_definition)
      %Ecto.Changeset{data: %AbsenceDefinition{}}

  """
  def change_absence_definition(%AbsenceDefinition{} = absence_definition, attrs \\ %{}) do
    AbsenceDefinition.changeset(absence_definition, attrs)
  end

  alias Timeclock.Absences.ApprovalRequest

  @doc """
  Returns the list of approval_requests.

  ## Examples

      iex> list_approval_requests()
      [%ApprovalRequest{}, ...]

  """
  def list_approval_requests do
    Repo.all(ApprovalRequest)
  end

  @doc """
  Gets a single approval_request.

  Raises `Ecto.NoResultsError` if the Approval request does not exist.

  ## Examples

      iex> get_approval_request!(123)
      %ApprovalRequest{}

      iex> get_approval_request!(456)
      ** (Ecto.NoResultsError)

  """
  def get_approval_request!(id), do: Repo.get!(ApprovalRequest, id)

  @doc """
  Creates a approval_request.

  ## Examples

      iex> create_approval_request(%{field: value})
      {:ok, %ApprovalRequest{}}

      iex> create_approval_request(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_approval_request(attrs) do
    %ApprovalRequest{}
    |> ApprovalRequest.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a approval_request.

  ## Examples

      iex> update_approval_request(approval_request, %{field: new_value})
      {:ok, %ApprovalRequest{}}

      iex> update_approval_request(approval_request, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_approval_request(%ApprovalRequest{} = approval_request, attrs) do
    approval_request
    |> ApprovalRequest.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a approval_request.

  ## Examples

      iex> delete_approval_request(approval_request)
      {:ok, %ApprovalRequest{}}

      iex> delete_approval_request(approval_request)
      {:error, %Ecto.Changeset{}}

  """
  def delete_approval_request(%ApprovalRequest{} = approval_request) do
    Repo.delete(approval_request)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking approval_request changes.

  ## Examples

      iex> change_approval_request(approval_request)
      %Ecto.Changeset{data: %ApprovalRequest{}}

  """
  def change_approval_request(%ApprovalRequest{} = approval_request, attrs \\ %{}) do
    ApprovalRequest.changeset(approval_request, attrs)
  end
end
