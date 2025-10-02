defmodule TimeclockWeb.OpenApi.Schemas.RoleDefinition do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "RoleDefinition", type: :object, properties: %{
      "Id" => %Schema{type: "string", format: "uuid"},
      "Name" => %Schema{type: "string"},
      "Code" => %Schema{type: "integer", format: "int32"}
    }})
end
