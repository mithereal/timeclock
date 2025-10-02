defmodule TimeclockWeb.OpenApi.Schemas.RoleDefinitionCreate do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "RoleDefinitionCreate", type: :object, properties: %{
      "Name" => %Schema{type: "string"},
      "ClaimActions" => %Schema{type: "array"}
    }})
end
