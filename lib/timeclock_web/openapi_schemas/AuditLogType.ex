defmodule TimeclockWeb.OpenApi.Schemas.AuditLogType do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "AuditLogType", type: :object, properties: %{
      "DisplayName" => %Schema{type: "string"},
      "Value" => %Schema{type: "string"}
    }})
end
