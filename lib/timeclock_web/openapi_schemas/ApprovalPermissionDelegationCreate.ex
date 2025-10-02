defmodule TimeclockWeb.OpenApi.Schemas.ApprovalPermissionDelegationCreate do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "ApprovalPermissionDelegationCreate", type: :object, properties: %{
      "DelegatedUserId" => %Schema{type: "string", format: "uuid"}
    }})
end
