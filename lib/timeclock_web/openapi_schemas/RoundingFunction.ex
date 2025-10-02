defmodule TimeclockWeb.OpenApi.Schemas.RoundingFunction do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "RoundingFunction", type: :object, properties: %{
      "Type" => %Schema{type: "integer", format: "int32"},
      "IsEnabled" => %Schema{type: "boolean"}
    }})
end
