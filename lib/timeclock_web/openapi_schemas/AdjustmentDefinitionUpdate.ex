defmodule TimeclockWeb.OpenApi.Schemas.AdjustmentDefinitionUpdate do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "AdjustmentDefinitionUpdate", type: :object, properties: %{
      "Name" => %Schema{type: "string"},
      "Type" => %Schema{type: "integer", format: "int32"},
      "CalculationResultTypeId" => %Schema{type: "string", format: "uuid"},
      "IsAvailableForAdminsOnly" => %Schema{type: "boolean"},
      "RestrictionType" => %Schema{type: "integer", format: "int32"},
      "TagId" => %Schema{type: "string", format: "uuid"},
      "Id" => %Schema{type: "string", format: "uuid"},
      "IsActive" => %Schema{type: "boolean"}
    }})
end
