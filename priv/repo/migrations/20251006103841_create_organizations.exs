defmodule Timeclock.Repo.Migrations.CreateOrganizations do
  use Ecto.Migration

  def change do
    create table(:organizations) do
      add :name, :string
      add :company_id, :integer
      timestamps()
    end
  end
end
