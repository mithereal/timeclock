defmodule Timeclock.Repo.Migrations.CreateProjects do
  use Ecto.Migration

  def change do
    create table(:projects) do
      add :name, :string
      add :start_date, :utc_datetime
      add :end_date, :utc_datetime
      add :organization_id, references(:organizations, on_delete: :nothing)

      timestamps(type: :utc_datetime)
    end

    create index(:projects, [:organization_id])
  end
end
