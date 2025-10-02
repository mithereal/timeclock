defmodule TimeclockWeb.OpenApi.Schemas.Clock do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "Clock", type: :object, properties: %{
      "Status" => %Schema{type: "string"},
      "ClockingEnabled" => %Schema{type: "boolean"},
      "ClientIpAddress" => %Schema{type: "string"},
      "ClockingButtons" => %Schema{type: "array"}
    }})
end
