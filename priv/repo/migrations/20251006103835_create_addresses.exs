defmodule Timeclock.Repo.Migrations.CreateAddresses do
  use Ecto.Migration

  def change do
    create table(:addresses) do
      add :street, :string
      add :city, :string
      add :state, :string
      add :postal_code, :string
      add :country, :string
      timestamps()
    end
  end
end
