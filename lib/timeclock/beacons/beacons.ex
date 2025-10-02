defmodule MyApp.Beacons.Beacon do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  @derive {Phoenix.Param, key: :id}
  schema "beacons" do
    field :name, :string
    field :major_value, :integer
    field :minor_value, :integer
    field :clocking_point_id, :binary_id
    field :uuid, :string

    timestamps()
  end

  @doc """
  Builds a changeset for creating or updating a Beacon.
  """
  def changeset(beacon, attrs) do
    beacon
    |> cast(attrs, [:name, :major_value, :minor_value, :clocking_point_id, :uuid])
    |> validate_required([:name])
    |> validate_length(:name, min: 1, max: 255)
    |> validate_length(:uuid, max: 100)
  end
end
