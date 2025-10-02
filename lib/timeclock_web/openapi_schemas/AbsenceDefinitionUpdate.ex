defmodule TimeclockWeb.OpenApi.Schemas.AbsenceDefinitionUpdate do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "AbsenceDefinitionUpdate", type: :object, properties: %{
      "Id" => %Schema{type: "string", format: "uuid"},
      "Name" => %Schema{type: "string"},
      "Type" => %Schema{type: "integer", format: "int32"},
      "IntegrationId" => %Schema{type: "integer", format: "int32"},
      "IsAvailableForAdminsOnly" => %Schema{type: "boolean"},
      "CategoryDefinitionId" => %Schema{type: "string", format: "uuid"},
      "IsActive" => %Schema{type: "boolean"},
      "RestrictionType" => %Schema{type: "integer", format: "int32"},
      "TagId" => %Schema{type: "string", format: "uuid"}
    }})
end
