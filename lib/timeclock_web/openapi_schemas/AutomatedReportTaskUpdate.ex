defmodule TimeclockWeb.OpenApi.Schemas.AutomatedReportTaskUpdate do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "AutomatedReportTaskUpdate", type: :object, properties: %{
      "Name" => %Schema{type: "string"},
      "StartDate" => %Schema{type: "string", format: "date"},
      "Type" => %Schema{type: "integer", format: "int32"},
      "Period" => %Schema{type: "integer", format: "int32"},
      "Recurrence" => %Schema{type: "integer", format: "int32"},
      "Status" => %Schema{type: "integer", format: "int32"},
      "TimeZone" => %Schema{type: "string"},
      "Id" => %Schema{type: "string", format: "uuid"},
      "RecipientId" => %Schema{type: "string", format: "uuid"},
      "ReportTemplateId" => %Schema{type: "string", format: "uuid"},
      "ScopeUserId" => %Schema{type: "string", format: "uuid"},
      "ScopeTagIds" => %Schema{type: "array"},
      "ScopeOrganizationUnitIds" => %Schema{type: "array"},
      "BccEmail" => %Schema{type: "string"},
      "NotesTerms" => %Schema{type: "string"}
    }})
end
