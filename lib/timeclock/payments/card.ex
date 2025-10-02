defmodule MyApp.Payments.Card do
  use Ecto.Schema
  import Ecto.Changeset

  schema "cards" do
    field :brand, :string
    field :exp_month, :integer
    field :exp_year, :integer
    field :last4, :string

    timestamps()
  end

  @doc false
  def changeset(card, attrs) do
    card
    |> cast(attrs, [:brand, :exp_month, :exp_year, :last4])
    |> validate_required([:brand, :exp_month, :exp_year, :last4])
    |> validate_length(:last4, is: 4)
    |> validate_number(:exp_month, greater_than_or_equal_to: 1, less_than_or_equal_to: 12)
    # adjust as needed
    |> validate_number(:exp_year, greater_than: 2000)
  end
end
