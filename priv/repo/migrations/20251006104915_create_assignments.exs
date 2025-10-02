defmodule Timeclock.Repo.Migrations.CreateAssignments do
  use Ecto.Migration

  def change do
    create table(:assignments) do
      add :start_date, :utc_datetime
      add :end_date, :utc_datetime
      add :user_id, references(:users, on_delete: :nothing)
      add :project_id, references(:projects, on_delete: :nothing)
      add :role_id, references(:roles, on_delete: :nothing)

      timestamps(type: :utc_datetime)
    end

    create index(:assignments, [:user_id])
    create index(:assignments, [:project_id])
    create index(:assignments, [:role_id])
  end
end
