defmodule TimeclockWeb.OpenApi.Schemas.AbsenceUpdate do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "AbsenceUpdate", type: :object, properties: %{
      "Id" => %Schema{type: "string", format: "uuid"},
      "UserId" => %Schema{type: "string", format: "uuid"},
      "Timestamp" => %Schema{type: "string", format: "date-time"},
      "AbsenceDefinitionId" => %Schema{type: "string", format: "uuid"},
      "Origin" => %Schema{type: "integer", format: "int32"},
      "Comment" => %Schema{type: "string"},
      "PartialTimeFrom" => %Schema{type: "string", format: "date-time"},
      "PartialTimeTo" => %Schema{type: "string", format: "date-time"},
      "PartialTimeDuration" => %Schema{type: "integer", format: "int32"},
      "IsPartial" => %Schema{type: "boolean"},
      "OverrideHolidayAbsence" => %Schema{type: "boolean"}
    }})
end
