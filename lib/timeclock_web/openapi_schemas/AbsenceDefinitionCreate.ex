defmodule TimeclockWeb.OpenApi.Schemas.AbsenceDefinitionCreate do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "AbsenceDefinitionCreate", type: :object, properties: %{
      "Name" => %Schema{type: "string"},
      "Type" => %Schema{type: "integer", format: "int32"},
      "IntegrationId" => %Schema{type: "integer", format: "int32"},
      "IsAvailableForAdminsOnly" => %Schema{type: "boolean"},
      "CategoryDefinitionId" => %Schema{type: "string", format: "uuid"},
      "RestrictionType" => %Schema{type: "integer", format: "int32"},
      "TagId" => %Schema{type: "string", format: "uuid"}
    }})
end
