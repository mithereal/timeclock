defmodule TimeclockWeb.OpenApi.Schemas.ClockingPointSummary do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "ClockingPointSummary", type: :object, properties: %{
      "Id" => %Schema{type: "string", format: "uuid"},
      "Name" => %Schema{type: "string"},
      "Description" => %Schema{type: "string"},
      "TimeClocks" => %Schema{type: "array"},
      "GeoLocations" => %Schema{type: "array"},
      "Beacons" => %Schema{type: "array"},
      "NetworkRestrictions" => %Schema{type: "array"}
    }})
end
