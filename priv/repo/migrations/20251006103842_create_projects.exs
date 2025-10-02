defmodule Timeclock.Repo.Migrations.CreateProjects do
  use Ecto.Migration

  def change do
    create table(:projects) do
      add :name, :string
      add :organization_id, :integer
      add :start_date, :utc_datetime
      add :end_date, :utc_datetime
      timestamps()
    end
  end
end
