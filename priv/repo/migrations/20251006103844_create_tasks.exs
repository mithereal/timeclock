defmodule Timeclock.Repo.Migrations.CreateTasks do
  use Ecto.Migration

  def change do
    create table(:tasks) do
      add :project_id, :integer
      add :name, :string
      add :description, :text
      add :due_date, :utc_datetime
      timestamps()
    end
  end
end
