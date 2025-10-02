defmodule TimeclockWeb.OpenApi.Schemas.NetworkRestrictionUpdate do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "NetworkRestrictionUpdate", type: :object, properties: %{
      "Id" => %Schema{type: "string", format: "uuid"},
      "Name" => %Schema{type: "string"},
      "IpRangeStart" => %Schema{type: "string"},
      "IpRangeEnd" => %Schema{type: "string"}
    }})
end
