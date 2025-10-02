defmodule MyApp.Calculations.CalculationDetail do
  use Ecto.Schema
  import Ecto.Changeset

  schema "calculation_details" do
    field :name, :string
    field :value, :string
    field :value_type, :string
    field :color, :string

    timestamps()
  end

  @doc """
  Changeset for CalculationDetail
  """
  def changeset(detail, attrs) do
    detail
    |> cast(attrs, [:name, :value, :value_type, :color])
    |> validate_required([:name])
    |> validate_length(:name, min: 1, max: 255)
    |> validate_length(:value_type, max: 100)
    |> validate_length(:color, max: 50)
  end
end
