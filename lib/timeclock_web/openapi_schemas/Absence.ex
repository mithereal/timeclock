defmodule TimeclockWeb.OpenApi.Schemas.Absence do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "Absence", type: :object, properties: %{
       "Id" => %Schema{type: "string", format: "uuid"},
      "UserId" => %Schema{type: "string", format: "uuid"},
      "GroupId" => %Schema{type: "string", format: "uuid"},
      "FirstName" => %Schema{type: "string"},
      "MiddleName" => %Schema{type: "string"},
      "LastName" => %Schema{type: "string"},
      "Timestamp" => %Schema{type: "string", format: "date-time"},
      "AbsenceDefinitionId" => %Schema{type: "string", format: "uuid"},
      "AbsenceDefinitionName" => %Schema{type: "string"},
      "InsertedOn" => %Schema{type: "string", format: "date-time"},
      "ModifiedOn" => %Schema{type: "string", format: "date-time"},
      "Origin" => %Schema{type: "integer", format: "int32"},
      "OriginDisplayName" => %Schema{type: "string"},
      "Comment" => %Schema{type: "string"},
      "IsAuthentic" => %Schema{type: "boolean"},
      "IconId" => %Schema{type: "string"},
      "IconColor" => %Schema{type: "string"},
      "IsCalculated" => %Schema{type: "boolean"},
      "Status" => %Schema{type: "integer", format: "int32"},
      "ApprovalRequest" => %Schema{type: "string"},
      "PartialTimeFrom" => %Schema{type: "string", format: "date-time"},
      "PartialTimeTo" => %Schema{type: "string", format: "date-time"},
      "PartialTimeDuration" => %Schema{type: "integer", format: "int32"},
      "IsPartial" => %Schema{type: "boolean"},
      "OverrideHolidayAbsence" => %Schema{type: "boolean"},
      "IsModified" => %Schema{type: "boolean"},
      "ModifiedByUser" => %Schema{type: "string"},
      "AbsenceDefinitionType" => %Schema{type: "integer", format: "int32"}
    }})
end
