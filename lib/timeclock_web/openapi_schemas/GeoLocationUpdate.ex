defmodule TimeclockWeb.OpenApi.Schemas.GeoLocationUpdate do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "GeoLocationUpdate", type: :object, properties: %{
      "Id" => %Schema{type: "string", format: "uuid"},
      "Name" => %Schema{type: "string"},
      "Latitude" => %Schema{type: "number", format: "double"},
      "Longitude" => %Schema{type: "number", format: "double"},
      "Radius" => %Schema{type: "number", format: "double"}
    }})
end
