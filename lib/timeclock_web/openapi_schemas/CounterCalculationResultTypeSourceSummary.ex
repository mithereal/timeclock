defmodule TimeclockWeb.OpenApi.Schemas.CounterCalculationResultTypeSourceSummary do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "CounterCalculationResultTypeSourceSummary", type: :object, properties: %{
      "Id" => %Schema{type: "string", format: "uuid"},
      "MathOperation" => %Schema{type: "integer", format: "int32"},
      "CalculationResultTypeId" => %Schema{type: "string", format: "uuid"},
      "CalculationResultType" => %Schema{type: "string"}
    }})
end
