defmodule Timeclock.AbsenceDefinitions.AbsenceDefinition do
  use Ecto.Schema
  import Ecto.Changeset

  # UUID primary key
  @primary_key {:id, :binary_id, autogenerate: true}
  @derive {Phoenix.Param, key: :id}
  schema "absence_definition" do
    field :name, :string
    field :integration_id, :string
    field :code, :string
    field :type, :string
    field :is_available_for_admins_only, :boolean, default: false
    field :category_definition_id, :binary_id
    field :category_definition_name, :string
    field :fraction, :float
    field :icon_id, :binary_id
    field :is_active, :boolean, default: true
    field :restriction_type, :string
    field :tag_id, :binary_id

    timestamps()
  end

  @doc """
  Builds a changeset for creating or updating an AbsenceDefinition.
  """
  def changeset(absence_definition, attrs) do
    absence_definition
    |> cast(attrs, [
      :name,
      :integration_id,
      :code,
      :type,
      :is_available_for_admins_only,
      :category_definition_id,
      :category_definition_name,
      :fraction,
      :icon_id,
      :is_active,
      :restriction_type,
      :tag_id
    ])
    |> validate_required([:name, :type])
    |> validate_length(:name, min: 1, max: 255)
    |> validate_number(:fraction, greater_than_or_equal_to: 0, allow_nil: true)
    |> validate_inclusion(:is_available_for_admins_only, [true, false])
    |> validate_inclusion(:is_active, [true, false])
  end
end
