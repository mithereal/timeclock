defmodule Timeclock.Repo.Migrations.CreateAbsences do
  use Ecto.Migration

  def change do
    create table(:absences) do
      add :user_id, :integer
      add :absence_definition_id, :integer
      add :start_date, :utc_datetime
      add :end_date, :utc_datetime
      add :status, :string
      add :reason, :string
      add :approved_by_id, :integer
      timestamps()
    end
  end
end
