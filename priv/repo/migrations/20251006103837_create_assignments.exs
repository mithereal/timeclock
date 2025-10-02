defmodule Timeclock.Repo.Migrations.CreateAssignments do
  use Ecto.Migration

  def change do
    create table(:assignments) do
      add :user_id, :integer
      add :project_id, :integer
      add :role_id, :integer
      add :start_date, :utc_datetime
      add :end_date, :utc_datetime
      timestamps()
    end
  end
end
