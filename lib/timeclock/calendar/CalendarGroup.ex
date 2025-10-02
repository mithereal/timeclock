defmodule MyApp.Calendar.CalendarGroup do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id

  schema "calendar_groups" do
    field :name, :string
    field :workdays, :map
    field :time_zone, :string

    timestamps()
  end

  @doc false
  def changeset(calendar_group, attrs) do
    calendar_group
    |> cast(attrs, [:name, :workdays, :time_zone])
    |> validate_required([:name])
  end
end
