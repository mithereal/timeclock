defmodule TimeclockWeb.OpenApi.Schemas.CalculationResult do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "CalculationResult", type: :object, properties: %{
      "Id" => %Schema{type: "string", format: "uuid"},
      "Name" => %Schema{type: "string"},
      "ValueType" => %Schema{type: "integer", format: "int32"},
      "Value" => %Schema{type: "string"},
      "CalculationResultTypeCode" => %Schema{type: "integer", format: "int32"}
    }})
end
