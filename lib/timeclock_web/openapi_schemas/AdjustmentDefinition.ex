defmodule TimeclockWeb.OpenApi.Schemas.AdjustmentDefinition do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "AdjustmentDefinition", type: :object, properties: %{
      "Id" => %Schema{type: "string", format: "uuid"},
      "Name" => %Schema{type: "string"},
      "Type" => %Schema{type: "integer", format: "int32"},
      "Code" => %Schema{type: "integer", format: "int32"},
      "CalculationResultTypeId" => %Schema{type: "string", format: "uuid"},
      "CalculationResultTypeName" => %Schema{type: "string"},
      "CalculationResultTypeValueType" => %Schema{type: "integer", format: "int32"},
      "IsAvailableForAdminsOnly" => %Schema{type: "boolean"},
      "IsActive" => %Schema{type: "boolean"},
      "RestrictionType" => %Schema{type: "integer", format: "int32"},
      "TagId" => %Schema{type: "string", format: "uuid"}
    }})
end
