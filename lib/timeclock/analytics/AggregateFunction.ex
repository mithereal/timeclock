defmodule Timeclock.Analytics.AggregateFunction do
  use Ecto.Schema
  import Ecto.Changeset

  # UUID primary key
  @primary_key {:id, :binary_id, autogenerate: true}
  @derive {Phoenix.Param, key: :id}
  schema "aggregate_functions" do
    field :type, :string
    field :is_enabled, :boolean, default: true

    timestamps()
  end

  @doc """
  Builds a changeset for creating or updating an AggregateFunction.
  """
  def changeset(aggregate_function, attrs) do
    aggregate_function
    |> cast(attrs, [:type, :is_enabled])
    |> validate_required([:type])
    |> validate_length(:type, min: 1, max: 255)
    |> validate_inclusion(:is_enabled, [true, false])
  end
end
