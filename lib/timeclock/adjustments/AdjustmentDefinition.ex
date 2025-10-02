defmodule Timeclock.Adjustments.AdjustmentDefinition do
  use Ecto.Schema
  import Ecto.Changeset

  # UUID primary key
  @primary_key {:id, :binary_id, autogenerate: true}
  @derive {Phoenix.Param, key: :id}
  schema "adjustment_definitions" do
    # Core fields
    field :name, :string
    field :type, :string
    field :code, :string

    # Calculation result type
    field :calculation_result_type_id, :binary_id
    field :calculation_result_type_name, :string
    field :calculation_result_type_value_type, :string

    # Flags
    field :is_available_for_admins_only, :boolean, default: false
    field :is_active, :boolean, default: true

    # Restrictions
    field :restriction_type, :string
    field :tag_id, :binary_id

    timestamps()
  end

  @doc """
  Builds a changeset for creating or updating an AdjustmentDefinition.
  """
  def changeset(adjustment_definition, attrs) do
    adjustment_definition
    |> cast(attrs, [
      :name,
      :type,
      :code,
      :calculation_result_type_id,
      :calculation_result_type_name,
      :calculation_result_type_value_type,
      :is_available_for_admins_only,
      :is_active,
      :restriction_type,
      :tag_id
    ])
    |> validate_required([:name, :type])
    |> validate_length(:name, min: 1, max: 255)
    |> validate_length(:type, min: 1, max: 100)
  end
end
