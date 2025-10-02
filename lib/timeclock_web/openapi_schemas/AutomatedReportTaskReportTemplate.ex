defmodule TimeclockWeb.OpenApi.Schemas.AutomatedReportTaskReportTemplate do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "AutomatedReportTaskReportTemplate", type: :object, properties: %{
      "Id" => %Schema{type: "string"},
      "Name" => %Schema{type: "string"}
    }})
end
