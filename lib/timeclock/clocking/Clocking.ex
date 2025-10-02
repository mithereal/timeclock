defmodule MyApp.Clockings.Clocking do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id

  schema "clockings" do
    field :timestamp, :utc_datetime
    field :original_timestamp, :utc_datetime
    field :is_authentic, :boolean, default: false
    field :comment, :string
    field :origin, :string
    field :origin_display_name, :string
    field :status, :string
    field :inserted_on, :utc_datetime
    field :is_modified, :boolean, default: false
    field :modified_by_user, :string
    field :modified_on, :utc_datetime
    field :geo_location_timestamp, :utc_datetime
    field :has_geo_location, :boolean, default: false
    field :accuracy, :float

    field :user_id, :binary_id
    field :first_name, :string
    field :middle_name, :string
    field :last_name, :string

    field :device_id, :binary_id
    field :beacon_id, :binary_id

    field :clocking_point_id, :binary_id
    field :clocking_point_name, :string

    field :clocking_definition_id, :binary_id
    field :clocking_definition_name, :string

    field :original_clocking_definition_id, :binary_id
    field :original_clocking_definition_name, :string

    belongs_to :approval_request, MyApp.Approvals.ApprovalRequest, type: :binary_id

    timestamps()
  end

  @doc false
  def changeset(clocking, attrs) do
    clocking
    |> cast(attrs, [
      :timestamp,
      :original_timestamp,
      :is_authentic,
      :comment,
      :origin,
      :origin_display_name,
      :status,
      :inserted_on,
      :is_modified,
      :modified_by_user,
      :modified_on,
      :geo_location_timestamp,
      :has_geo_location,
      :accuracy,
      :user_id,
      :first_name,
      :middle_name,
      :last_name,
      :device_id,
      :beacon_id,
      :clocking_point_id,
      :clocking_point_name,
      :clocking_definition_id,
      :clocking_definition_name,
      :original_clocking_definition_id,
      :original_clocking_definition_name,
      :approval_request_id
    ])
    |> validate_required([:timestamp, :user_id])
  end
end
