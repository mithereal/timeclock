defmodule Timeclock.Repo.Migrations.CreateLocations do
  use Ecto.Migration

  def change do
    create table(:locations) do
      add :name, :string
      add :address_id, :integer
      add :timezone, :string
      timestamps()
    end
  end
end
