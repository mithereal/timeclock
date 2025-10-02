defmodule TimeclockWeb.OpenApi.Schemas.ClaimAction do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "ClaimAction", type: :object, properties: %{
      "ClaimActionId" => %Schema{type: "string", format: "uuid"},
      "ClaimActionType" => %Schema{type: "integer", format: "int32"},
      "ClaimId" => %Schema{type: "string", format: "uuid"}
    }})
end
