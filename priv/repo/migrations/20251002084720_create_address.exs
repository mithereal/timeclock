defmodule Timeclock.Repo.Migrations.CreateAddress do
  use Ecto.Migration

  def change do
    create table(:addresses, primary_key: false) do
      # Primary key UUID
      add :id, :uuid, primary_key: true, default: fragment("gen_random_uuid()")

      # Address fields
      add :line, :string
      add :city, :string
      add :country, :string
      add :postal_code, :string
      add :state, :string
      add :ip_address, :string

      timestamps()
    end

    # Indexes for common queries
    create index(:addresses, [:city])
    create index(:addresses, [:postal_code])
    create index(:addresses, [:country])
  end
end
