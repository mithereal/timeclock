defmodule TimeclockWeb.OpenApi.Schemas.NetworkRestrictionCreate do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "NetworkRestrictionCreate", type: :object, properties: %{
      "Name" => %Schema{type: "string"},
      "IpRangeStart" => %Schema{type: "string"},
      "IpRangeEnd" => %Schema{type: "string"},
      "ClockingPointId" => %Schema{type: "string", format: "uuid"}
    }})
end
