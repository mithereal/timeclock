defmodule MyApp.Calculations.CalculationCategory do
  use Ecto.Schema
  import Ecto.Changeset

  schema "calculation_categories" do
    field :name, :string
    field :color, :string
    field :value, :string

    timestamps()
  end

  @doc """
  Changeset for creating/updating CalculationCategory.
  """
  def changeset(category, attrs) do
    category
    |> cast(attrs, [:name, :color, :value])
    |> validate_required([:name])
    |> validate_length(:name, min: 1, max: 255)
    |> validate_length(:color, max: 50)
    |> validate_length(:value, max: 255)
  end
end
