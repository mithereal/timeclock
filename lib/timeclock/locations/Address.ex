defmodule Timeclock.Locations.Address do
  use Ecto.Schema
  import Ecto.Changeset

  # UUID primary key
  @primary_key {:id, :binary_id, autogenerate: true}
  @derive {Phoenix.Param, key: :id}
  schema "addresses" do
    field :line, :string
    field :city, :string
    field :country, :string
    field :postal_code, :string
    field :state, :string
    field :ip_address, :string

    timestamps()
  end

  @doc """
  Builds a changeset for creating or updating an Address.
  """
  def changeset(address, attrs) do
    address
    |> cast(attrs, [:line, :city, :country, :postal_code, :state, :ip_address])
    |> validate_required([:line, :city, :country])
    |> validate_length(:line, max: 255)
    |> validate_length(:city, max: 100)
    |> validate_length(:state, max: 100)
    |> validate_length(:country, max: 100)
    |> validate_length(:postal_code, max: 20)
    |> validate_format(:ip_address, ~r/^(\d{1,3}\.){3}\d{1,3}$|^[a-fA-F0-9:]+$/)
  end
end
