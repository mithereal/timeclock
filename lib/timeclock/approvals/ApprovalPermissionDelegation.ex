defmodule Timeclock.Approvals.ApprovalPermissionDelegation do
  use Ecto.Schema
  import Ecto.Changeset

  # UUID primary key
  @primary_key {:id, :binary_id, autogenerate: true}
  @derive {Phoenix.Param, key: :id}
  schema "approval_permission_delegations" do
    field :delegated_user_id, :binary_id
    field :delegated_user_name, :string
    field :user_id, :binary_id
    field :user_name, :string

    timestamps()
  end

  @doc """
  Builds a changeset for creating or updating an ApprovalPermissionDelegation.
  """
  def changeset(delegation, attrs) do
    delegation
    |> cast(attrs, [:delegated_user_id, :delegated_user_name, :user_id, :user_name])
    |> validate_required([:delegated_user_id, :user_id])
    |> validate_length(:delegated_user_name, max: 255)
    |> validate_length(:user_name, max: 255)
  end
end
