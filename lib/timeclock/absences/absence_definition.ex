defmodule Timeclock.Absences.AbsenceDefinition do
  use Ecto.Schema
  import Ecto.Changeset

  schema "absence_definitions" do
    field :name, :string
    field :description, :string
    field :requires_approval, :boolean, default: false
    field :max_days_per_year, :integer

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(absence_definition, attrs) do
    absence_definition
    |> cast(attrs, [:name, :description, :requires_approval, :max_days_per_year])
    |> validate_required([:name, :description, :requires_approval, :max_days_per_year])
  end
end
