defmodule TimeclockWeb.OpenApi.Schemas.GeoLocation do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "GeoLocation", type: :object, properties: %{
      "Id" => %Schema{type: "string", format: "uuid"},
      "Name" => %Schema{type: "string"},
      "Latitude" => %Schema{type: "number", format: "double"},
      "Longitude" => %Schema{type: "number", format: "double"},
      "Radius" => %Schema{type: "number", format: "double"},
      "ClockingPointId" => %Schema{type: "string", format: "uuid"}
    }})
end
