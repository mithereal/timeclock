defmodule TimeclockWeb.OpenApi.Schemas.CounterRuleDefinition do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "CounterRuleDefinition", type: :object, properties: %{
      "Id" => %Schema{type: "string", format: "uuid"},
      "Name" => %Schema{type: "string"},
      "Code" => %Schema{type: "integer", format: "int32"},
      "Type" => %Schema{type: "integer", format: "int32"}
    }})
end
