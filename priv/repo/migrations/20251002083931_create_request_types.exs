defmodule Timeclock.Repo.Migrations.CreateRequestTypes do
  use Ecto.Migration

  def change do
    create table(:request_types) do
      add :request_type, :integer, null: false

      timestamps()
    end

    # Add a check constraint to enforce enum values
    create constraint(:request_types, :request_type_enum,
             check: "request_type IN (0, 1, 2, 3, 4, 5)"
           )
  end
end
