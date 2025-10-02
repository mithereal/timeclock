defmodule Timeclock.Scheduling.BreakRule do
  use Ecto.Schema
  import Ecto.Changeset

  schema "break_rules" do
    field :name, :string
    field :duration_minutes, :integer
    field :applies_after_hours, :integer

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(break_rule, attrs) do
    break_rule
    |> cast(attrs, [:name, :duration_minutes, :applies_after_hours])
    |> validate_required([:name, :duration_minutes, :applies_after_hours])
  end
end
