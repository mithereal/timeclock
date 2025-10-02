defmodule Timeclock.Repo.Migrations.CreateCalendars do
  use Ecto.Migration

  def change do
    create table(:calendars) do
      add :name, :string
      add :timezone, :string
      add :work_days, {:array, :string}
      timestamps()
    end
  end
end
