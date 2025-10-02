defmodule Timeclock.Repo.Migrations.CreateCalendarEvents do
  use Ecto.Migration

  def change do
    create table(:calendar_events) do
      add :name, :string, null: false
      add :date, :date
      add :valid_to, :date

      add :calendar_group_id, :binary_id
      add :calendar_group_name, :string

      add :calendar_event_type_id, :binary_id
      add :calendar_event_type_code, :string
      add :calendar_event_type_name, :string

      add :recurring_mode, :string

      timestamps()
    end

    create index(:calendar_events, [:calendar_group_id])
    create index(:calendar_events, [:calendar_event_type_id])
    create index(:calendar_events, [:date])
  end
end
