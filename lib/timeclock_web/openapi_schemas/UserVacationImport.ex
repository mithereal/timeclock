defmodule TimeclockWeb.OpenApi.Schemas.UserVacationImport do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "UserVacationImport", type: :object, properties: %{
      "TraceId" => %Schema{type: "string"},
      "Email" => %Schema{type: "string"},
      "FirstName" => %Schema{type: "string"},
      "LastName" => %Schema{type: "string"},
      "VacationQuota" => %Schema{type: "number", format: "double"},
      "Timestamp" => %Schema{type: "string", format: "date-time"},
      "OverrideExistingVacationBalances" => %Schema{type: "boolean"}
    }})
end
