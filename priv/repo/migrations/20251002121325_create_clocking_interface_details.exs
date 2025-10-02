defmodule Timeclock.Repo.Migrations.CreateClockingInterfaceDetails do
  use Ecto.Migration

  def change do
    create table(:clocking_interface_details, primary_key: false) do
      add :id, :binary_id, primary_key: true

      add :button_index, :integer
      add :event_index, :integer

      add :clocking_definition_id, :binary_id
      add :clocking_definition_name, :string

      add :icon_id, :integer
      add :is_default, :boolean, default: false

      timestamps()
    end

    create index(:clocking_interface_details, [:clocking_definition_id])
  end
end
