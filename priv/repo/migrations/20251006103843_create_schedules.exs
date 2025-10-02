defmodule Timeclock.Repo.Migrations.CreateSchedules do
  use Ecto.Migration

  def change do
    create table(:schedules) do
      add :user_id, :integer
      add :shift_id, :integer
      add :start_time, :utc_datetime
      add :end_time, :utc_datetime
      timestamps()
    end
  end
end
