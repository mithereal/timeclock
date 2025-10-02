defmodule TimeclockWeb.OpenApi.Schemas.CounterDailyThresholdCondition do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "CounterDailyThresholdCondition", type: :object, properties: %{
      "Id" => %Schema{type: "string", format: "uuid"},
      "ConditionType" => %Schema{type: "integer", format: "int32"},
      "ResultType" => %Schema{type: "integer", format: "int32"},
      "Value" => %Schema{type: "integer", format: "int32"}
    }})
end
