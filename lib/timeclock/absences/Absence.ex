defmodule Timeclock.Absences.Absences do
  use Ecto.Schema
  import Ecto.Changeset

  # UUID primary key
  @primary_key {:id, :binary_id, autogenerate: true}
  @derive {Phoenix.Param, key: :id}
  schema "absences" do
    # References
    field :user_id, :binary_id
    field :group_id, :binary_id

    # Names
    field :first_name, :string
    field :middle_name, :string
    field :last_name, :string

    # Event info
    field :timestamp, :utc_datetime
    field :absence_definition_id, :binary_id
    field :absence_definition_name, :string
    field :absence_definition_type, :string

    # System tracking
    field :inserted_on, :utc_datetime
    field :modified_on, :utc_datetime

    # Origin info
    field :origin, :string
    field :origin_display_name, :string

    # Comments / Icons
    field :comment, :string
    field :icon_id, :binary_id
    field :icon_color, :string

    # Status & flags
    field :is_authentic, :boolean, default: false
    field :is_calculated, :boolean, default: false
    field :status, :string

    # Nested JSON for approval request
    field :approval_request, :map

    # Partial time
    field :partial_time_from, :time
    field :partial_time_to, :time
    field :partial_time_duration, :float
    field :is_partial, :boolean, default: false

    # Overrides & modifications
    field :override_holiday_absence, :boolean, default: false
    field :is_modified, :boolean, default: false
    field :modified_by_user, :string

    timestamps()
  end

  @doc """
  Builds a changeset for creating or updating an Absence.
  """
  def changeset(absence, attrs) do
    absence
    |> cast(attrs, [
      :user_id,
      :group_id,
      :first_name,
      :middle_name,
      :last_name,
      :timestamp,
      :absence_definition_id,
      :absence_definition_name,
      :absence_definition_type,
      :inserted_on,
      :modified_on,
      :origin,
      :origin_display_name,
      :comment,
      :icon_id,
      :icon_color,
      :is_authentic,
      :is_calculated,
      :status,
      :approval_request,
      :partial_time_from,
      :partial_time_to,
      :partial_time_duration,
      :is_partial,
      :override_holiday_absence,
      :is_modified,
      :modified_by_user
    ])
    |> validate_required([:user_id, :timestamp])
    |> validate_number(:partial_time_duration, greater_than_or_equal_to: 0)
    |> validate_inclusion(:is_authentic, [true, false])
    |> validate_inclusion(:is_calculated, [true, false])
    |> validate_inclusion(:is_partial, [true, false])
    |> validate_inclusion(:override_holiday_absence, [true, false])
    |> validate_inclusion(:is_modified, [true, false])
  end
end
