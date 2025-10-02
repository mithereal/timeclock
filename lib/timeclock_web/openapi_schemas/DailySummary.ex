defmodule TimeclockWeb.OpenApi.Schemas.DailySummary do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "DailySummary", type: :object, properties: %{
      "DailyBalanceValue" => %Schema{type: "integer", format: "int32"},
      "RunningBalanceValue" => %Schema{type: "integer", format: "int32"},
      "DailyOvertimeValue" => %Schema{type: "integer", format: "int32"},
      "RunningOvertimeValue" => %Schema{type: "integer", format: "int32"},
      "PaidPresenceValue" => %Schema{type: "integer", format: "int32"},
      "PaidAbsenceValue" => %Schema{type: "integer", format: "int32"},
      "MissingPresenceValue" => %Schema{type: "integer", format: "int32"},
      "UnpaidPresenceValue" => %Schema{type: "integer", format: "int32"},
      "LunchBreakValue" => %Schema{type: "integer", format: "int32"},
      "LunchBreakCountValue" => %Schema{type: "integer", format: "int32"}
    }})
end
