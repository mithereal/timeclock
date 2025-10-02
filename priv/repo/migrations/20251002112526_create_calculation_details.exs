defmodule Timeclock.Repo.Migrations.CreateCalculationDetails do
  use Ecto.Migration

  def change do
    create table(:calculation_details) do
      add :name, :string, null: false
      add :value, :string
      add :value_type, :string
      add :color, :string

      timestamps()
    end

    create index(:calculation_details, [:name])
  end
end
