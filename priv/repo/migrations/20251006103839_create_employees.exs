defmodule Timeclock.Repo.Migrations.CreateEmployees do
  use Ecto.Migration

  def change do
    create table(:employees) do
      add :user_id, :integer
      add :department_id, :integer
      add :position, :string
      add :hired_at, :utc_datetime
      timestamps()
    end
  end
end
