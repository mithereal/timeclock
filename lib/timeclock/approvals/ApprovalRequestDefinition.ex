defmodule Timeclock.Approvals.ApprovalRequestDefinition do
  use Ecto.Schema
  import Ecto.Changeset

  # UUID primary key
  @primary_key {:id, :binary_id, autogenerate: true}
  @derive {Phoenix.Param, key: :id}
  schema "approval_request_definitions" do
    field :name, :string
    field :request_type, :integer
    field :start_time_parameter_required, :boolean, default: false
    field :end_time_parameter_required, :boolean, default: false
    field :numeric_value_required, :boolean, default: false
    field :time_value_required, :boolean, default: false

    timestamps()
  end

  @allowed_request_types [0, 1, 2, 3, 4, 5]

  @doc """
  Builds a changeset for creating or updating an ApprovalRequestDefinition.
  """
  def changeset(definition, attrs) do
    definition
    |> cast(attrs, [
      :name,
      :request_type,
      :start_time_parameter_required,
      :end_time_parameter_required,
      :numeric_value_required,
      :time_value_required
    ])
    |> validate_required([:name, :request_type])
    |> validate_length(:name, min: 1, max: 255)
    |> validate_inclusion(:request_type, @allowed_request_types)
  end
end
