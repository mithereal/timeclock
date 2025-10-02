defmodule MyApp.Reports.AutomatedReportTaskLog do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  @derive {Phoenix.Param, key: :id}
  schema "automated_report_task_logs" do
    field :automated_report_task_type, :integer
    field :started_on, :utc_datetime
    field :completed_on, :utc_datetime
    field :automated_report_task_id, :binary_id
    field :automated_report_task_name, :string
    field :trigger_type, :string
    field :status, :string
    field :error, :string
    field :group_id, :string

    timestamps()
  end

  @doc """
  Builds a changeset for creating or updating an AutomatedReportTaskLog.
  """
  def changeset(log, attrs) do
    log
    |> cast(attrs, [
      :automated_report_task_type,
      :started_on,
      :completed_on,
      :automated_report_task_id,
      :automated_report_task_name,
      :trigger_type,
      :status,
      :error,
      :group_id
    ])
    |> validate_required([:automated_report_task_type])
    |> validate_length(:automated_report_task_name, max: 255)
    |> validate_length(:trigger_type, max: 100)
    |> validate_length(:status, max: 100)
    |> validate_length(:group_id, max: 255)
  end
end
