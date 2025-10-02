defmodule TimeclockWeb.OpenApi.Schemas.CounterCalculationRuleSummary do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "CounterCalculationRuleSummary", type: :object, properties: %{
      "Id" => %Schema{type: "string", format: "uuid"},
      "ExecutionPointType" => %Schema{type: "integer", format: "int32"},
      "ExecutionPointDate" => %Schema{type: "string", format: "date-time"},
      "UseYesterdayValue" => %Schema{type: "boolean"},
      "ConditionParameterValueType" => %Schema{type: "integer", format: "int32"},
      "ConditionParameterValue" => %Schema{type: "string"},
      "CalculationOrder" => %Schema{type: "integer", format: "int32"},
      "ExecutionPointCalendarEventTypeId" => %Schema{type: "string", format: "uuid"},
      "ExecutionPointCalendarEventType" => %Schema{type: "string"},
      "CounterRuleDefinitionId" => %Schema{type: "string", format: "uuid"},
      "CounterRuleDefinition" => %Schema{type: "string"},
      "DerivationCalculationResultTypeId" => %Schema{type: "string", format: "uuid"},
      "DerivationCalculationResultType" => %Schema{type: "string"},
      "ConditionParameterCalculationResultTypeId" => %Schema{type: "string", format: "uuid"},
      "ConditionParameterCalculationResultType" => %Schema{type: "string"}
    }})
end
