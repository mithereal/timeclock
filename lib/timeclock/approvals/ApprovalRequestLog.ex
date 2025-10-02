defmodule Timeclock.Approvals.ApprovalRequestLog do
  use Ecto.Schema
  import Ecto.Changeset

  # UUID primary key
  @primary_key {:id, :binary_id, autogenerate: true}
  @derive {Phoenix.Param, key: :id}
  schema "approval_request_logs" do
    field :user_id, :binary_id
    field :user_name, :string
    field :action, :string
    field :date_time, :utc_datetime

    timestamps()
  end

  @doc """
  Builds a changeset for creating or updating an ApprovalRequestLog.
  """
  def changeset(log, attrs) do
    log
    |> cast(attrs, [:user_id, :user_name, :action, :date_time])
    |> validate_required([:user_id, :user_name, :action, :date_time])
    |> validate_length(:user_name, max: 255)
    |> validate_length(:action, max: 255)
  end
end
