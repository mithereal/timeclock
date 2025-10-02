defmodule TimeclockWeb.OpenApi.Schemas.ApprovalPermissionDelegation do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "ApprovalPermissionDelegation", type: :object, properties: %{
      "Id" => %Schema{type: "string", format: "uuid"},
      "DelegatedUserId" => %Schema{type: "string", format: "uuid"},
      "DelegatedUserName" => %Schema{type: "string"},
      "UserId" => %Schema{type: "string", format: "uuid"},
      "UserName" => %Schema{type: "string"}
    }})
end
