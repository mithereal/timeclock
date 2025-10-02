defmodule TimeclockWeb.OpenApi.Schemas.Adjustment do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "Adjustment", type: :object, properties: %{
      "Id" => %Schema{type: "string", format: "uuid"},
      "UserId" => %Schema{type: "string", format: "uuid"},
      "FirstName" => %Schema{type: "string"},
      "MiddleName" => %Schema{type: "string"},
      "LastName" => %Schema{type: "string"},
      "Value" => %Schema{type: "number", format: "double"},
      "Timestamp" => %Schema{type: "string", format: "date-time"},
      "AdjustmentDefinitionId" => %Schema{type: "string", format: "uuid"},
      "AdjustmentDefinitionName" => %Schema{type: "string"},
      "AdjustmentDefinitionCode" => %Schema{type: "integer", format: "int32"},
      "CalculationResultTypeValueType" => %Schema{type: "integer", format: "int32"},
      "IsAuthentic" => %Schema{type: "boolean"},
      "Comment" => %Schema{type: "string"},
      "Status" => %Schema{type: "integer", format: "int32"},
      "Origin" => %Schema{type: "integer", format: "int32"},
      "InsertedOn" => %Schema{type: "string", format: "date-time"},
      "IconId" => %Schema{type: "string"},
      "PartialTimeFrom" => %Schema{type: "string", format: "date-time"},
      "PartialTimeTo" => %Schema{type: "string", format: "date-time"},
      "IsPartial" => %Schema{type: "boolean"},
      "PartialTimeDuration" => %Schema{type: "integer", format: "int32"},
      "ApprovalRequest" => %Schema{type: "string"},
      "GroupId" => %Schema{type: "string", format: "uuid"}
    }})
end
