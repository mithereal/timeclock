defmodule TimeclockWeb.OpenApi.Schemas.RoleDefinitionUpdate do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "RoleDefinitionUpdate", type: :object, properties: %{
      "Id" => %Schema{type: "string", format: "uuid"},
      "Name" => %Schema{type: "string"},
      "ClaimActions" => %Schema{type: "array"}
    }})
end
