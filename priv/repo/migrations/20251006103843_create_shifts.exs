defmodule Timeclock.Repo.Migrations.CreateShifts do
  use Ecto.Migration

  def change do
    create table(:shifts) do
      add :name, :string
      add :start_time, :time
      add :end_time, :time
      timestamps()
    end
  end
end
