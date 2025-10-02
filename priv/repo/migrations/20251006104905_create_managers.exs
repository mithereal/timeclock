defmodule Timeclock.Repo.Migrations.CreateManagers do
  use Ecto.Migration

  def change do
    create table(:managers) do
      add :user_id, references(:users, on_delete: :nothing)
      add :department_id, references(:departments, on_delete: :nothing)

      timestamps(type: :utc_datetime)
    end

    create index(:managers, [:user_id])
    create index(:managers, [:department_id])
  end
end
