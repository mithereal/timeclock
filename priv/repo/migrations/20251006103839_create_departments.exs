defmodule Timeclock.Repo.Migrations.CreateDepartments do
  use Ecto.Migration

  def change do
    create table(:departments) do
      add :name, :string
      add :company_id, :integer
      timestamps()
    end
  end
end
