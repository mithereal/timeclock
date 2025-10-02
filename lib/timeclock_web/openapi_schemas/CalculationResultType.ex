defmodule TimeclockWeb.OpenApi.Schemas.CalculationResultType do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "CalculationResultType", type: :object, properties: %{
      "Id" => %Schema{type: "string", format: "uuid"},
      "Name" => %Schema{type: "string"},
      "Type" => %Schema{type: "integer", format: "int32"},
      "ValueType" => %Schema{type: "integer", format: "int32"},
      "Code" => %Schema{type: "integer", format: "int32"}
    }})
end
