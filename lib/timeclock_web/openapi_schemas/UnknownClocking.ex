defmodule TimeclockWeb.OpenApi.Schemas.UnknownClocking do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "UnknownClocking", type: :object, properties: %{
      "TimeStamp" => %Schema{type: "string", format: "date-time"},
      "OriginalTimeStamp" => %Schema{type: "string", format: "date-time"},
      "InsertedOn" => %Schema{type: "string", format: "date-time"},
      "ControllerId" => %Schema{type: "string", format: "uuid"},
      "SynchronizationValue" => %Schema{type: "integer", format: "int64"},
      "IdentifierNumber" => %Schema{type: "string"},
      "TimeEventId" => %Schema{type: "integer", format: "int32"},
      "TenantId" => %Schema{type: "string", format: "uuid"},
      "ClockingDefinitionName" => %Schema{type: "string"}
    }})
end
