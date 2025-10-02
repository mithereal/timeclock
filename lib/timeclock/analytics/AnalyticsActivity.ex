defmodule Timeclock.Analytics.AnalyticsActivity do
  use Ecto.Schema
  import Ecto.Changeset

  # UUID primary key
  @primary_key {:id, :binary_id, autogenerate: true}
  @derive {Phoenix.Param, key: :id}
  schema "analytics_activities" do
    field :name, :string
    field :properties, :map, default: %{}

    timestamps()
  end

  @doc """
  Builds a changeset for creating or updating an AnalyticsActivity.
  """
  def changeset(activity, attrs) do
    activity
    |> cast(attrs, [:name, :properties])
    |> validate_required([:name])
    |> validate_length(:name, min: 1, max: 255)
    |> validate_properties()
  end

  # Custom validation for properties map
  defp validate_properties(changeset) do
    case get_field(changeset, :properties) do
      nil -> changeset
      props when is_map(props) -> changeset
      _ -> add_error(changeset, :properties, "must be a map")
    end
  end
end
