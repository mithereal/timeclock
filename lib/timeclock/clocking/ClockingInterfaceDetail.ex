defmodule MyApp.Clockings.ClockingInterfaceDetail do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id

  schema "clocking_interface_details" do
    field :button_index, :integer
    field :event_index, :integer

    field :clocking_definition_id, :binary_id
    field :clocking_definition_name, :string

    field :icon_id, :integer
    field :is_default, :boolean, default: false

    timestamps()
  end

  @doc false
  def changeset(detail, attrs) do
    detail
    |> cast(attrs, [
      :button_index,
      :event_index,
      :clocking_definition_id,
      :clocking_definition_name,
      :icon_id,
      :is_default
    ])
    |> validate_required([:button_index, :event_index, :clocking_definition_id])
    |> validate_number(:button_index, greater_than_or_equal_to: 0)
    |> validate_number(:event_index, greater_than_or_equal_to: 0)
  end
end
