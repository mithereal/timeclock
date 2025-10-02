defmodule Timeclock.Repo.Migrations.CreateApprovalRequests do
  use Ecto.Migration

  def change do
    create table(:approval_requests) do
      add :requester_id, :integer
      add :approver_id, :integer
      add :status, :string
      add :requested_at, :utc_datetime
      add :approved_at, :utc_datetime
      timestamps()
    end
  end
end
