defmodule TimeclockWeb.OpenApi.Schemas.Calculation do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "Calculation", type: :object, properties: %{
      "DateFrom" => %Schema{type: "string", format: "date-time"},
      "DateTo" => %Schema{type: "string", format: "date-time"},
      "UsersCount" => %Schema{type: "integer", format: "int32"},
      "UsersCalculations" => %Schema{type: "array"},
      "CalculationDetailsSummaries" => %Schema{type: "array"},
      "PlanSumValue" => %Schema{type: "integer", format: "int32"},
      "DifferenceSumValue" => %Schema{type: "integer", format: "int32"},
      "PaidPresenceSumValue" => %Schema{type: "integer", format: "int32"},
      "PaidAllDayAbsenceSumValue" => %Schema{type: "integer", format: "int32"},
      "MissingPresenceSumValue" => %Schema{type: "integer", format: "int32"},
      "UnpaidPresenceSumValue" => %Schema{type: "integer", format: "int32"},
      "WorkFreeDaysSumValue" => %Schema{type: "integer", format: "int32"},
      "WorkDaysSumValue" => %Schema{type: "integer", format: "int32"},
      "IsCalculationValid" => %Schema{type: "boolean"}
    }})
end
