defmodule MyApp.Audit.AuditLogType do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  @derive {Phoenix.Param, key: :id}
  schema "audit_log_types" do
    field :display_name, :string
    field :value, :integer

    timestamps()
  end

  @doc """
  Builds a changeset for creating or updating an AuditLogType.
  """
  def changeset(log_type, attrs) do
    log_type
    |> cast(attrs, [:display_name, :value])
    |> validate_required([:display_name, :value])
    |> validate_length(:display_name, min: 1, max: 255)
  end
end
