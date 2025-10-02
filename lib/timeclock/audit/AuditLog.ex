defmodule MyApp.Audit.AuditLog do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  @derive {Phoenix.Param, key: :id}
  schema "audit_logs" do
    field :table_name, :string
    field :entity_id, :string
    field :entity_type, :string
    field :entity_type_name, :string
    field :ip_address, :string
    field :action, :string
    field :date_time, :utc_datetime
    field :old_value, :map
    field :new_value, :map
    field :support_account_id, :binary_id
    field :user_id, :binary_id
    field :user_name, :string

    timestamps()
  end

  @doc """
  Builds a changeset for creating or updating an AuditLog.
  """
  def changeset(audit_log, attrs) do
    audit_log
    |> cast(attrs, [
      :table_name,
      :entity_id,
      :entity_type,
      :entity_type_name,
      :ip_address,
      :action,
      :date_time,
      :old_value,
      :new_value,
      :support_account_id,
      :user_id,
      :user_name
    ])
    |> validate_required([:table_name, :date_time])
    |> validate_length(:table_name, max: 255)
    |> validate_length(:entity_type, max: 100)
    |> validate_length(:entity_type_name, max: 255)
    # supports IPv4 and IPv6
    |> validate_length(:ip_address, max: 45)
    |> validate_length(:action, max: 100)
    |> validate_length(:user_name, max: 255)
  end
end
