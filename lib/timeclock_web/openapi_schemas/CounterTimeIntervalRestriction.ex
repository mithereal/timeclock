defmodule TimeclockWeb.OpenApi.Schemas.CounterTimeIntervalRestriction do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "CounterTimeIntervalRestriction", type: :object, properties: %{
      "Id" => %Schema{type: "string", format: "uuid"},
      "StartInterval" => %Schema{type: "integer", format: "int32"},
      "EndInterval" => %Schema{type: "integer", format: "int32"}
    }})
end
