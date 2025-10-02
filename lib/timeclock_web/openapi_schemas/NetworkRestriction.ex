defmodule TimeclockWeb.OpenApi.Schemas.NetworkRestriction do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "NetworkRestriction", type: :object, properties: %{
      "Id" => %Schema{type: "string", format: "uuid"},
      "Name" => %Schema{type: "string"},
      "IpRangeStart" => %Schema{type: "string"},
      "IpRangeEnd" => %Schema{type: "string"},
      "ClockingPointId" => %Schema{type: "string", format: "uuid"}
    }})
end
