defmodule TimeclockWeb.OpenApi.Schemas.Beacon do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "Beacon", type: :object, properties: %{
      "Id" => %Schema{type: "string", format: "uuid"},
      "Name" => %Schema{type: "string"},
      "MajorValue" => %Schema{type: "integer", format: "int32"},
      "MinorValue" => %Schema{type: "integer", format: "int32"},
      "ClockingPointId" => %Schema{type: "string", format: "uuid"},
      "Uuid" => %Schema{type: "string", format: "uuid"}
    }})
end
