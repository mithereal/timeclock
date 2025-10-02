defmodule Timeclock.Repo.Migrations.CreateCalendarGroups do
  use Ecto.Migration

  def change do
    create table(:calendar_groups, primary_key: false) do
      add :id, :binary_id, primary_key: true
      add :name, :string, null: false
      add :workdays, :map
      add :time_zone, :string

      timestamps()
    end

    create index(:calendar_groups, [:name])
  end
end
