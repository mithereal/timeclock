defmodule TimeclockWeb.OpenApi.Schemas.CounterDefinitionCreate do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "CounterDefinitionCreate", type: :object, properties: %{
      "Name" => %Schema{type: "string"},
      "Description" => %Schema{type: "string"},
      "Icon" => %Schema{type: "string", format: "byte"},
      "Type" => %Schema{type: "integer", format: "int32"},
      "ValueType" => %Schema{type: "integer", format: "int32"},
      "CalculationOrder" => %Schema{type: "integer", format: "int32"},
      "Code" => %Schema{type: "integer", format: "int32"},
      "Visibility" => %Schema{type: "integer", format: "int32"},
      "OverMidnightBehaviour" => %Schema{type: "integer", format: "int32"}
    }})
end
