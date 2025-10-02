defmodule TimeclockWeb.OpenApi.Schemas.Country do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "Country", type: :object, properties: %{
      "Name" => %Schema{type: "string"},
      "TwoLetterIsoCode" => %Schema{type: "string"},
      "ThreeLetterIsoCode" => %Schema{type: "string"},
      "Regions" => %Schema{type: "array"}
    }})
end
