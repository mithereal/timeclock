defmodule Timeclock.Organizations.Company do
  use Ecto.Schema
  import Ecto.Changeset

  schema "companies" do
    field :name, :string
    field :registration_number, :string
    field :address_id, :id

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(company, attrs) do
    company
    |> cast(attrs, [:name, :registration_number])
    |> validate_required([:name, :registration_number])
  end
end
