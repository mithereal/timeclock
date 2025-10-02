defmodule TimeclockWeb.OpenApi.Schemas.UserSummaryRoleDefinition do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "UserSummaryRoleDefinition", type: :object, properties: %{
      "Id" => %Schema{type: "string", format: "uuid"},
      "Name" => %Schema{type: "string"}
    }})
end
