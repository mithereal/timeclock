defmodule Timeclock.Repo.Migrations.CreateApprovalPermissionDelegations do
  use Ecto.Migration

  def change do
    create table(:approval_permission_delegations, primary_key: false) do
      # Primary key UUID
      add :id, :uuid, primary_key: true, default: fragment("gen_random_uuid()")

      # Delegation info
      add :delegated_user_id, :uuid, null: false
      add :delegated_user_name, :string
      add :user_id, :uuid, null: false
      add :user_name, :string

      timestamps()
    end

    # Indexes for performance
    create index(:approval_permission_delegations, [:delegated_user_id])
    create index(:approval_permission_delegations, [:user_id])
  end
end
