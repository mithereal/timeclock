defmodule Timeclock.Repo.Migrations.CreateApprovalRequests do
  use Ecto.Migration

  def change do
    create table(:approval_requests) do
      add :status, :string
      add :requested_at, :utc_datetime
      add :approved_at, :utc_datetime
      add :requester_id, references(:users, on_delete: :nothing)
      add :approver_id, references(:users, on_delete: :nothing)

      timestamps(type: :utc_datetime)
    end

    create index(:approval_requests, [:requester_id])
    create index(:approval_requests, [:approver_id])
  end
end
