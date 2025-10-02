defmodule TimeclockWeb.OpenApi.Schemas.RoleDefinitionSummary do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "RoleDefinitionSummary", type: :object, properties: %{
      "Id" => %Schema{type: "string", format: "uuid"},
      "Name" => %Schema{type: "string"},
      "Code" => %Schema{type: "integer", format: "int32"},
      "RoleClaimActions" => %Schema{type: "array"}
    }})
end
