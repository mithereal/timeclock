defmodule TimeclockWeb.OpenApi.Schemas.AutomatedReportTask do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "AutomatedReportTask", type: :object, properties: %{
      "Id" => %Schema{type: "string", format: "uuid"},
      "Name" => %Schema{type: "string"},
      "StartDate" => %Schema{type: "string", format: "date"},
      "Type" => %Schema{type: "integer", format: "int32"},
      "Period" => %Schema{type: "integer", format: "int32"},
      "Recurrence" => %Schema{type: "integer", format: "int32"},
      "Status" => %Schema{type: "integer", format: "int32"},
      "TimeZone" => %Schema{type: "string"},
      "NextRunDate" => %Schema{type: "string", format: "date"},
      "Recipient" => %Schema{type: "string"},
      "ReportTemplate" => %Schema{type: "string"},
      "ScopeUserId" => %Schema{type: "string", format: "uuid"},
      "ScopeTagIds" => %Schema{type: "array"},
      "ScopeOrganizationUnitIds" => %Schema{type: "array"},
      "BccEmail" => %Schema{type: "string"},
      "EstimatedMonthlyEmails" => %Schema{type: "integer", format: "int32"},
      "NotesTerms" => %Schema{type: "string"}
    }})
end
