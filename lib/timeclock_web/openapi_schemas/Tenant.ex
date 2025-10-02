defmodule TimeclockWeb.OpenApi.Schemas.Tenant do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "Tenant", type: :object, properties: %{
      "Name" => %Schema{type: "string"},
      "Telephone" => %Schema{type: "string"},
      "ContactEmail" => %Schema{type: "string"},
      "CountryCode" => %Schema{type: "string"}
    }})
end
