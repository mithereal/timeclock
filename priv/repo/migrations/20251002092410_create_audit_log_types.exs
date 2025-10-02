defmodule Timeclock.Repo.Migrations.CreateAuditLogTypes do
  use Ecto.Migration

  def change do
    create table(:audit_log_types, primary_key: false) do
      add :id, :uuid, primary_key: true, default: fragment("gen_random_uuid()")

      add :display_name, :string, null: false
      add :value, :integer, null: false

      timestamps()
    end

    # Indexes for queries
    create index(:audit_log_types, [:value])
    create index(:audit_log_types, [:display_name])
  end
end
