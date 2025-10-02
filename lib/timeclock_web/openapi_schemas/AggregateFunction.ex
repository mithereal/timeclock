defmodule TimeclockWeb.OpenApi.Schemas.AggregateFunction do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "AggregateFunction", type: :object, properties: %{
      "Type" => %Schema{type: "integer", format: "int32"},
      "IsEnabled" => %Schema{type: "boolean"}
    }})
end
