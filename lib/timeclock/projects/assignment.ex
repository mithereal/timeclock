defmodule Timeclock.Projects.Assignment do
  use Ecto.Schema
  import Ecto.Changeset

  schema "assignments" do
    field :start_date, :utc_datetime
    field :end_date, :utc_datetime
    field :user_id, :id
    field :project_id, :id
    field :role_id, :id

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(assignment, attrs) do
    assignment
    |> cast(attrs, [:start_date, :end_date])
    |> validate_required([:start_date, :end_date])
  end
end
