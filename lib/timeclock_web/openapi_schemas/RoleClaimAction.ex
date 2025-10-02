defmodule TimeclockWeb.OpenApi.Schemas.RoleClaimAction do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "RoleClaimAction", type: :object, properties: %{
      "ClaimActionId" => %Schema{type: "string", format: "uuid"},
      "ClaimActionType" => %Schema{type: "integer", format: "int32"},
      "ClaimId" => %Schema{type: "string", format: "uuid"},
      "ClaimName" => %Schema{type: "string"},
      "AuthorizationModuleId" => %Schema{type: "string", format: "uuid"}
    }})
end
