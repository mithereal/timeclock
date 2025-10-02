defmodule TimeclockWeb.OpenApi.Schemas.GeoLocationCreate do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "GeoLocationCreate", type: :object, properties: %{
      "Name" => %Schema{type: "string"},
      "Latitude" => %Schema{type: "number", format: "double"},
      "Longitude" => %Schema{type: "number", format: "double"},
      "Radius" => %Schema{type: "number", format: "double"},
      "ClockingPointId" => %Schema{type: "string", format: "uuid"}
    }})
end
