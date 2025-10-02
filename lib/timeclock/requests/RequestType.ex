defmodule Timeclock.Requests.RequestType do
  use Ecto.Schema
  import Ecto.Changeset

  # UUID primary key
  @primary_key {:id, :binary_id, autogenerate: true}
  @derive {Phoenix.Param, key: :id}
  schema "request_types" do
    field :request_type, :integer

    timestamps()
  end

  @allowed_values [0, 1, 2, 3, 4, 5]

  @doc """
  Builds a changeset for creating or updating a RequestType.
  Ensures request_type is within allowed enum values.
  """
  def changeset(request_type_struct, attrs) do
    request_type_struct
    |> cast(attrs, [:request_type])
    |> validate_required([:request_type])
    |> validate_inclusion(:request_type, @allowed_values)
  end
end
