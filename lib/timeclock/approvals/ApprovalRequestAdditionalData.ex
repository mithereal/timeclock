defmodule Timeclock.Approvals.ApprovalRequestAdditionalData do
  use Ecto.Schema
  import Ecto.Changeset

  # UUID primary key
  @primary_key {:id, :binary_id, autogenerate: true}
  @derive {Phoenix.Param, key: :id}
  schema "approval_request_additional_data" do
    field :integer_value, :string
    field :time_value, :time
    field :appliers_comment, :string
    field :approvers_comment, :string

    timestamps()
  end

  @doc """
  Builds a changeset for creating or updating ApprovalRequestAdditionalData.
  """
  def changeset(additional_data, attrs) do
    additional_data
    |> cast(attrs, [
      :integer_value,
      :time_value,
      :appliers_comment,
      :approvers_comment
    ])
    # optional: limit string length
    |> validate_length(:integer_value, max: 50)
    |> validate_length(:appliers_comment, max: 1000)
    |> validate_length(:approvers_comment, max: 1000)
  end
end
