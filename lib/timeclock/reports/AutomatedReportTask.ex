defmodule MyApp.Reports.AutomatedReportTask do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  @derive {Phoenix.Param, key: :id}
  schema "automated_report_tasks" do
    field :name, :string
    field :start_date, :utc_datetime
    field :type, :string
    field :period, :string
    field :recurrence, :string
    field :status, :string
    field :time_zone, :string
    field :next_run_date, :utc_datetime

    # Nested objects
    field :recipient, :map
    field :report_template, :map

    # Scope
    field :scope_user_id, :binary_id
    field :scope_tag_ids, {:array, :binary_id}, default: []
    field :scope_organization_unit_ids, {:array, :binary_id}, default: []

    # Other fields
    field :bcc_email, :string
    field :estimated_monthly_emails, :integer
    field :notes_terms, :string

    timestamps()
  end

  @doc """
  Builds a changeset for creating or updating an AutomatedReportTask.
  """
  def changeset(task, attrs) do
    task
    |> cast(attrs, [
      :name,
      :start_date,
      :type,
      :period,
      :recurrence,
      :status,
      :time_zone,
      :next_run_date,
      :recipient,
      :report_template,
      :scope_user_id,
      :scope_tag_ids,
      :scope_organization_unit_ids,
      :bcc_email,
      :estimated_monthly_emails,
      :notes_terms
    ])
    |> validate_required([:name])
    |> validate_length(:name, min: 1, max: 255)
    |> validate_number(:estimated_monthly_emails, greater_than_or_equal_to: 0)
  end
end
