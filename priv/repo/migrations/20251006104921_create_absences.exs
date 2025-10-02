defmodule Timeclock.Repo.Migrations.CreateAbsences do
  use Ecto.Migration

  def change do
    create table(:absences) do
      add :start_date, :utc_datetime
      add :end_date, :utc_datetime
      add :status, :string
      add :reason, :string
      add :user_id, references(:users, on_delete: :nothing)
      add :absence_definition_id, references(:absence_definitions, on_delete: :nothing)
      add :approved_by_id, references(:users, on_delete: :nothing)

      timestamps(type: :utc_datetime)
    end

    create index(:absences, [:user_id])
    create index(:absences, [:absence_definition_id])
    create index(:absences, [:approved_by_id])
  end
end
