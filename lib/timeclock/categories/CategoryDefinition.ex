defmodule MyApp.Categories.CategoryDefinition do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id

  schema "category_definitions" do
    field :name, :string
    field :presence_status, :string
    field :paid_time_status, :string
    field :color, :string
    field :icon_id, :binary_id
    field :code, :string

    timestamps()
  end

  @doc false
  def changeset(category_definition, attrs) do
    category_definition
    |> cast(attrs, [
      :name,
      :presence_status,
      :paid_time_status,
      :color,
      :icon_id,
      :code
    ])
    |> validate_required([:name])
    |> unique_constraint(:code)
  end
end
