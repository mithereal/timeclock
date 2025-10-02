defmodule TimeclockWeb.OpenApi.Schemas.CounterClockingSourceSummary do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "CounterClockingSourceSummary", type: :object, properties: %{
      "Id" => %Schema{type: "string", format: "uuid"},
      "MathOperation" => %Schema{type: "integer", format: "int32"},
      "ClockingDefinitionId" => %Schema{type: "string", format: "uuid"},
      "ClockingDefinition" => %Schema{type: "string"}
    }})
end
