defmodule Timeclock.Organizations.Address do
  use Ecto.Schema
  import Ecto.Changeset

  schema "addresses" do
    field :street, :string
    field :city, :string
    field :state, :string
    field :postal_code, :string
    field :country, :string

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(address, attrs) do
    address
    |> cast(attrs, [:street, :city, :state, :postal_code, :country])
    |> validate_required([:street, :city, :state, :postal_code, :country])
  end
end
