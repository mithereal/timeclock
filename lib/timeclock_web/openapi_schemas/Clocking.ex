defmodule TimeclockWeb.OpenApi.Schemas.Clocking do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "Clocking", type: :object, properties: %{
      "Id" => %Schema{type: "string", format: "uuid"},
      "Timestamp" => %Schema{type: "string", format: "date-time"},
      "OriginalTimestamp" => %Schema{type: "string", format: "date-time"},
      "IsAuthentic" => %Schema{type: "boolean"},
      "Comment" => %Schema{type: "string"},
      "Origin" => %Schema{type: "integer", format: "int32"},
      "OriginDisplayName" => %Schema{type: "string"},
      "Status" => %Schema{type: "integer", format: "int32"},
      "InsertedOn" => %Schema{type: "string", format: "date-time"},
      "IsModified" => %Schema{type: "boolean"},
      "ModifiedByUser" => %Schema{type: "string"},
      "ModifiedOn" => %Schema{type: "string", format: "date-time"},
      "GeoLocationTimestamp" => %Schema{type: "string", format: "date-time"},
      "HasGeoLocation" => %Schema{type: "boolean"},
      "Accuracy" => %Schema{type: "number", format: "double"},
      "UserId" => %Schema{type: "string", format: "uuid"},
      "FirstName" => %Schema{type: "string"},
      "MiddleName" => %Schema{type: "string"},
      "LastName" => %Schema{type: "string"},
      "DeviceId" => %Schema{type: "string", format: "uuid"},
      "BeaconId" => %Schema{type: "string", format: "uuid"},
      "ClockingPointId" => %Schema{type: "string", format: "uuid"},
      "ClockingPointName" => %Schema{type: "string"},
      "ClockingDefinitionId" => %Schema{type: "string", format: "uuid"},
      "ClockingDefinitionName" => %Schema{type: "string"},
      "OriginalClockingDefinitionId" => %Schema{type: "string", format: "uuid"},
      "OriginalClockingDefinitionName" => %Schema{type: "string"},
      "ApprovalRequest" => %Schema{type: "string"}
    }})
end
