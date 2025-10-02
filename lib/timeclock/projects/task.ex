defmodule Timeclock.Projects.Task do
  use Ecto.Schema
  import Ecto.Changeset

  schema "tasks" do
    field :name, :string
    field :description, :string
    field :due_date, :utc_datetime
    field :project_id, :id

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(task, attrs) do
    task
    |> cast(attrs, [:name, :description, :due_date])
    |> validate_required([:name, :description, :due_date])
  end
end
