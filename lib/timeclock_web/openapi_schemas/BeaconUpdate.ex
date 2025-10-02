defmodule TimeclockWeb.OpenApi.Schemas.BeaconUpdate do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "BeaconUpdate", type: :object, properties: %{
      "Id" => %Schema{type: "string", format: "uuid"},
      "Name" => %Schema{type: "string"},
      "MajorValue" => %Schema{type: "integer", format: "int32"},
      "MinorValue" => %Schema{type: "integer", format: "int32"}
    }})
end
