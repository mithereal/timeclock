defmodule TimeclockWeb.OpenApi.Schemas.TenantCardToken do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "TenantCardToken", type: :object, properties: %{
      "SecretKey" => %Schema{type: "string"}
    }})
end
