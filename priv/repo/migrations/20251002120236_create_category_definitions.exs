defmodule Timeclock.Repo.Migrations.CreateCategoryDefinitions do
  use Ecto.Migration

  def change do
    create table(:category_definitions, primary_key: false) do
      add :id, :binary_id, primary_key: true
      add :name, :string, null: false
      add :presence_status, :string
      add :paid_time_status, :string
      add :color, :string
      add :icon_id, :binary_id
      add :code, :string

      timestamps()
    end

    create index(:category_definitions, [:code])
    create index(:category_definitions, [:icon_id])
  end
end
