defmodule Timeclock.Repo.Migrations.CreateApprovalRequestAdditionalData do
  use Ecto.Migration

  def change do
    create table(:approval_request_additional_data, primary_key: false) do
      # Primary key UUID
      add :id, :uuid, primary_key: true, default: fragment("gen_random_uuid()")

      # Fields
      add :integer_value, :string
      add :time_value, :time
      add :appliers_comment, :text
      add :approvers_comment, :text

      timestamps()
    end
  end
end
