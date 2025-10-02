defmodule Timeclock.Repo.Migrations.CreateBreakRules do
  use Ecto.Migration

  def change do
    create table(:break_rules) do
      add :name, :string
      add :duration_minutes, :integer
      add :applies_after_hours, :integer

      timestamps(type: :utc_datetime)
    end
  end
end
