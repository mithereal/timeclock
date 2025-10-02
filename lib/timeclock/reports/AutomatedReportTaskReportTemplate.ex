defmodule MyApp.Reports.AutomatedReportTaskReportTemplate do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  @derive {Phoenix.Param, key: :id}
  schema "automated_report_task_report_templates" do
    field :name, :string

    timestamps()
  end

  @doc """
  Builds a changeset for creating or updating an AutomatedReportTaskReportTemplate.
  """
  def changeset(template, attrs) do
    template
    |> cast(attrs, [:name])
    |> validate_required([:name])
    |> validate_length(:name, min: 1, max: 255)
  end
end
