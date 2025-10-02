defmodule TimeclockWeb.OpenApi.Schemas.ClockingPoint do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "ClockingPoint", type: :object, properties: %{
      "Id" => %Schema{type: "string", format: "uuid"},
      "Name" => %Schema{type: "string"},
      "Description" => %Schema{type: "string"}
    }})
end
