defmodule TimeclockWeb.OpenApi.Schemas.Card do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "Card", type: :object, properties: %{
      "Brand" => %Schema{type: "string"},
      "ExpMonth" => %Schema{type: "integer", format: "int64"},
      "ExpYear" => %Schema{type: "integer", format: "int64"},
      "Last4" => %Schema{type: "string"}
    }})
end
