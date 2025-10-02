defmodule TimeclockWeb.OpenApi.Schemas.UserOrganizationUnitBulkUpdate do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "UserOrganizationUnitBulkUpdate", type: :object, properties: %{
      "UserId" => %Schema{type: "string", format: "uuid"},
      "OrganizationUnitId" => %Schema{type: "string", format: "uuid"},
      "MemberFrom" => %Schema{type: "string", format: "date-time"},
      "MemberTo" => %Schema{type: "string", format: "date-time"}
    }})
end
