defmodule Timeclock.Repo.Migrations.CreateEmployees do
  use Ecto.Migration

  def change do
    create table(:employees) do
      add :position, :string
      add :hired_at, :utc_datetime
      add :user_id, references(:users, on_delete: :nothing)
      add :department_id, references(:departments, on_delete: :nothing)

      timestamps(type: :utc_datetime)
    end

    create index(:employees, [:user_id])
    create index(:employees, [:department_id])
  end
end
