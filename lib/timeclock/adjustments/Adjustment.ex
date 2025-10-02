defmodule Timeclock.Adjustments.Adjustment do
  use Ecto.Schema
  import Ecto.Changeset

  # UUID primary key
  @primary_key {:id, :binary_id, autogenerate: true}
  @derive {Phoenix.Param, key: :id}
  schema "adjustments" do
    # User info
    field :user_id, :binary_id
    field :first_name, :string
    field :middle_name, :string
    field :last_name, :string
    field :group_id, :binary_id

    # Adjustment details
    field :value, :float
    field :timestamp, :utc_datetime
    field :adjustment_definition_id, :binary_id
    field :adjustment_definition_name, :string
    field :adjustment_definition_code, :string
    field :calculation_result_type_value_type, :string
    field :is_authentic, :boolean, default: false
    field :comment, :string
    field :status, :string
    field :origin, :string
    field :inserted_on, :utc_datetime
    field :icon_id, :binary_id

    # Partial time
    field :partial_time_from, :time
    field :partial_time_to, :time
    field :is_partial, :boolean, default: false
    field :partial_time_duration, :float

    # Nested approval request
    field :approval_request, :map

    timestamps()
  end

  @doc """
  Builds a changeset for creating or updating an Adjustment.
  """
  def changeset(adjustment, attrs) do
    adjustment
    |> cast(attrs, [
      :user_id,
      :first_name,
      :middle_name,
      :last_name,
      :group_id,
      :value,
      :timestamp,
      :adjustment_definition_id,
      :adjustment_definition_name,
      :adjustment_definition_code,
      :calculation_result_type_value_type,
      :is_authentic,
      :comment,
      :status,
      :origin,
      :inserted_on,
      :icon_id,
      :partial_time_from,
      :partial_time_to,
      :is_partial,
      :partial_time_duration,
      :approval_request
    ])
    |> validate_required([:user_id, :timestamp, :value])
    |> validate_inclusion(:is_authentic, [true, false])
    |> validate_inclusion(:is_partial, [true, false])
  end
end
