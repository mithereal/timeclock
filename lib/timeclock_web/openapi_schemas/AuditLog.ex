defmodule TimeclockWeb.OpenApi.Schemas.AuditLog do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "AuditLog", type: :object, properties: %{
      "Id" => %Schema{type: "string", format: "uuid"},
      "TableName" => %Schema{type: "string"},
      "EntityId" => %Schema{type: "string", format: "uuid"},
      "EntityType" => %Schema{type: "string"},
      "EntityTypeName" => %Schema{type: "string"},
      "IpAddress" => %Schema{type: "string"},
      "Action" => %Schema{type: "integer", format: "int32"},
      "DateTime" => %Schema{type: "string", format: "date-time"},
      "OldValue" => %Schema{type: "string"},
      "NewValue" => %Schema{type: "string"},
      "SupportAccountId" => %Schema{type: "string", format: "uuid"},
      "UserId" => %Schema{type: "string", format: "uuid"},
      "UserName" => %Schema{type: "string"}
    }})
end
