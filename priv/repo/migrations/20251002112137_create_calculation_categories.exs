defmodule Timeclock.Repo.Migrations.CreateCalculationCategories do
  use Ecto.Migration

  def change do
    create table(:calculation_categories) do
      add :name, :string, null: false
      add :color, :string
      add :value, :string

      timestamps()
    end

    create index(:calculation_categories, [:name])
  end
end
