defmodule TimeclockWeb.OpenApi.Schemas.TenantVat do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "TenantVat", type: :object, properties: %{
      "Vat" => %Schema{type: "string"},
      "CountryCode" => %Schema{type: "string"}
    }})
end
