defmodule MyApp.Clockings.ClockingDefinition do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id

  schema "clocking_definitions" do
    field :name, :string
    field :type, :string
    field :code, :string

    field :starting_category_definition_id, :binary_id
    field :starting_category_definition_name, :string

    field :absence_category_definition_id, :binary_id
    field :absence_category_definition_name, :string

    field :in_clocking_definition_id, :binary_id
    field :in_clocking_definition_name, :string

    field :out_clocking_definition_id, :binary_id
    field :out_clocking_definition_name, :string

    field :is_active, :boolean, default: true
    field :restriction_type, :string
    field :tag_id, :binary_id

    timestamps()
  end

  @doc false
  def changeset(clocking_definition, attrs) do
    clocking_definition
    |> cast(attrs, [
      :name,
      :type,
      :code,
      :starting_category_definition_id,
      :starting_category_definition_name,
      :absence_category_definition_id,
      :absence_category_definition_name,
      :in_clocking_definition_id,
      :in_clocking_definition_name,
      :out_clocking_definition_id,
      :out_clocking_definition_name,
      :is_active,
      :restriction_type,
      :tag_id
    ])
    |> validate_required([:name])
    |> unique_constraint(:code)
  end
end
