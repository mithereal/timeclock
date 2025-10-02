defmodule TimeclockWeb.OpenApi.Schemas.TimeClockCreate do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "TimeClockCreate", type: :object, properties: %{
      "Name" => %Schema{type: "string"},
      "Type" => %Schema{type: "integer", format: "int32"},
      "MacAddress" => %Schema{type: "string"},
      "PairCode" => %Schema{type: "string"},
      "TimeZone" => %Schema{type: "string"},
      "Language" => %Schema{type: "string"},
      "ClockingPointId" => %Schema{type: "string", format: "uuid"},
      "CanOpenDoors" => %Schema{type: "boolean"}
    }})
end
