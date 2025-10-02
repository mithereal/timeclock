defmodule Timeclock.Repo.Migrations.CreateCards do
  use Ecto.Migration

  def change do
    create table(:cards) do
      add :brand, :string, null: false
      add :exp_month, :integer, null: false
      add :exp_year, :integer, null: false
      add :last4, :string, size: 4, null: false

      timestamps()
    end

    create index(:cards, [:brand])
    create index(:cards, [:exp_year])
  end
end
