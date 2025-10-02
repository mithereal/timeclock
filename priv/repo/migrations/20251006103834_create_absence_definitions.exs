defmodule Timeclock.Repo.Migrations.CreateAbsenceDefinitions do
  use Ecto.Migration

  def change do
    create table(:absence_definitions) do
      add :name, :string
      add :description, :string
      add :requires_approval, :boolean, default: false
      add :max_days_per_year, :integer
      timestamps()
    end
  end
end
