defmodule Timeclock.Absences.ApprovalRequest do
  use Ecto.Schema
  import Ecto.Changeset

  schema "approval_requests" do
    field :status, :string
    field :requested_at, :utc_datetime
    field :approved_at, :utc_datetime
    field :requester_id, :id
    field :approver_id, :id

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(approval_request, attrs) do
    approval_request
    |> cast(attrs, [:status, :requested_at, :approved_at])
    |> validate_required([:status, :requested_at, :approved_at])
  end
end
