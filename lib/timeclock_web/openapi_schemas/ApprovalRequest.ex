defmodule TimeclockWeb.OpenApi.Schemas.ApprovalRequest do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "ApprovalRequest", type: :object, properties: %{
      "Id" => %Schema{type: "string", format: "uuid"},
      "UserId" => %Schema{type: "string", format: "uuid"},
      "UserName" => %Schema{type: "string"},
      "FirstName" => %Schema{type: "string"},
      "LastName" => %Schema{type: "string"},
      "PeriodStart" => %Schema{type: "string", format: "date-time"},
      "PeriodEnd" => %Schema{type: "string", format: "date-time"},
      "Status" => %Schema{type: "integer", format: "int32"},
      "StatusSetByUserId" => %Schema{type: "string", format: "uuid"},
      "StatusSetByUser" => %Schema{type: "string"},
      "EventDefinitionId" => %Schema{type: "string", format: "uuid"},
      "EventDefinitionName" => %Schema{type: "string"},
      "EventDefinitionCode" => %Schema{type: "integer", format: "int32"},
      "EventDefinitionType" => %Schema{type: "integer", format: "int32"},
      "AdditionalData" => %Schema{type: "string"},
      "IsPartial" => %Schema{type: "boolean"},
      "PartialTimeFrom" => %Schema{type: "string", format: "date-time"},
      "PartialTimeTo" => %Schema{type: "string", format: "date-time"},
      "CreatedOn" => %Schema{type: "string", format: "date-time"},
      "ModifiedOn" => %Schema{type: "string", format: "date-time"},
      "IconId" => %Schema{type: "string"},
      "UserPictureUri" => %Schema{type: "string"},
      "PeriodOptions" => %Schema{type: "integer", format: "int32"},
      "CurrentApproverNames" => %Schema{type: "string"},
      "IsDirty" => %Schema{type: "boolean"}
    }})
end
