defmodule TimeclockWeb.OpenApi.Schemas.HolidayBonusRuleAssignment do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "HolidayBonusRuleAssignment", type: :object, properties: %{
      "Id" => %Schema{type: "string", format: "uuid"},
      "Type" => %Schema{type: "integer", format: "int32"},
      "ValidFrom" => %Schema{type: "string", format: "date-time"},
      "ValidTo" => %Schema{type: "string", format: "date-time"},
      "RuleDefinitionCode" => %Schema{type: "integer", format: "int32"},
      "RuleDefinitionId" => %Schema{type: "string", format: "uuid"},
      "SkipHolidaysWithPaidTime" => %Schema{type: "boolean"}
    }})
end
