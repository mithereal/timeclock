defmodule TimeclockWeb.OpenApi.Schemas.CountryRegion do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "CountryRegion", type: :object, properties: %{
      "Code" => %Schema{type: "string"},
      "Name" => %Schema{type: "string"}
    }})
end
