defmodule TimeclockWeb.OpenApi.Schemas.ClockingPointUpdate do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "ClockingPointUpdate", type: :object, properties: %{
      "Id" => %Schema{type: "string", format: "uuid"},
      "Name" => %Schema{type: "string"},
      "Description" => %Schema{type: "string"}
    }})
end
