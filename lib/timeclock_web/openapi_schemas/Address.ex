defmodule TimeclockWeb.OpenApi.Schemas.Address do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "Address", type: :object, properties: %{
      "Line" => %Schema{type: "string"},
      "City" => %Schema{type: "string"},
      "Country" => %Schema{type: "string"},
      "PostalCode" => %Schema{type: "string"},
      "State" => %Schema{type: "string"},
      "IpAddress" => %Schema{type: "string"}
    }})
end
