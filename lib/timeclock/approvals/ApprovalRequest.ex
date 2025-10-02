defmodule Timeclock.Approvals.ApprovalRequest do
  use Ecto.Schema
  import Ecto.Changeset

  # UUID primary key
  @primary_key {:id, :binary_id, autogenerate: true}
  @derive {Phoenix.Param, key: :id}
  schema "approval_requests" do
    # User info
    field :user_id, :binary_id
    field :user_name, :string
    field :first_name, :string
    field :last_name, :string
    field :user_picture_uri, :string

    # Period info
    field :period_start, :utc_datetime
    field :period_end, :utc_datetime
    field :period_options, :map

    # Status info
    field :status, :string
    field :status_set_by_user_id, :binary_id
    field :status_set_by_user, :string
    field :is_dirty, :boolean, default: false

    # Event definition
    field :event_definition_id, :binary_id
    field :event_definition_name, :string
    field :event_definition_code, :string
    field :event_definition_type, :string

    # Additional data
    field :additional_data, :map

    # Partial time
    field :is_partial, :boolean, default: false
    field :partial_time_from, :time
    field :partial_time_to, :time

    # System timestamps
    field :created_on, :utc_datetime
    field :modified_on, :utc_datetime

    # Icon
    field :icon_id, :binary_id

    # Current approvers
    field :current_approver_names, :map

    timestamps()
  end

  @doc """
  Builds a changeset for creating or updating an ApprovalRequest.
  """
  def changeset(approval_request, attrs) do
    approval_request
    |> cast(attrs, [
      :user_id,
      :user_name,
      :first_name,
      :last_name,
      :user_picture_uri,
      :period_start,
      :period_end,
      :period_options,
      :status,
      :status_set_by_user_id,
      :status_set_by_user,
      :is_dirty,
      :event_definition_id,
      :event_definition_name,
      :event_definition_code,
      :event_definition_type,
      :additional_data,
      :is_partial,
      :partial_time_from,
      :partial_time_to,
      :created_on,
      :modified_on,
      :icon_id,
      :current_approver_names
    ])
    |> validate_required([:user_id, :period_start])
    |> validate_inclusion(:is_partial, [true, false])
    |> validate_inclusion(:is_dirty, [true, false])
  end
end
