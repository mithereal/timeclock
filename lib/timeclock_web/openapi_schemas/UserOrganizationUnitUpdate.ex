defmodule TimeclockWeb.OpenApi.Schemas.UserOrganizationUnitUpdate do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "UserOrganizationUnitUpdate", type: :object, properties: %{
      "OrganizationUnitId" => %Schema{type: "string", format: "uuid"},
      "MemberFrom" => %Schema{type: "string", format: "date-time"},
      "MemberTo" => %Schema{type: "string", format: "date-time"}
    }})
end
