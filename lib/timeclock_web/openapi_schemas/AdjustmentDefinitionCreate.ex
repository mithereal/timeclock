defmodule TimeclockWeb.OpenApi.Schemas.AdjustmentDefinitionCreate do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "AdjustmentDefinitionCreate", type: :object, properties: %{
      "Name" => %Schema{type: "string"},
      "Type" => %Schema{type: "integer", format: "int32"},
      "CalculationResultTypeId" => %Schema{type: "string", format: "uuid"},
      "IsAvailableForAdminsOnly" => %Schema{type: "boolean"},
      "RestrictionType" => %Schema{type: "integer", format: "int32"},
      "TagId" => %Schema{type: "string", format: "uuid"}
    }})
end
