defmodule Timeclock.Repo.Migrations.CreateManagers do
  use Ecto.Migration

  def change do
    create table(:managers) do
      add :user_id, :integer
      add :department_id, :integer
      timestamps()
    end
  end
end
