defmodule TimeclockWeb.OpenApi.Schemas.UserSummaryOrganizationUnitRestriction do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "UserSummaryOrganizationUnitRestriction", type: :object, properties: %{
      "Id" => %Schema{type: "string", format: "uuid"},
      "Name" => %Schema{type: "string"}
    }})
end
