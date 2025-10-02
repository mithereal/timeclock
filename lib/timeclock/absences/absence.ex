defmodule Timeclock.Absences.Absence do
  use Ecto.Schema
  import Ecto.Changeset

  schema "absence" do
    field :start_date, :utc_datetime
    field :end_date, :utc_datetime
    field :status, :string
    field :reason, :string
    field :user_id, :id
    field :absence_definition_id, :id
    field :approved_by_id, :id

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(absence, attrs) do
    absence
    |> cast(attrs, [:start_date, :end_date, :status, :reason])
    |> validate_required([:start_date, :end_date, :status, :reason])
  end
end
