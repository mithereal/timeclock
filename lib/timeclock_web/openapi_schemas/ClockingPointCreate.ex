defmodule TimeclockWeb.OpenApi.Schemas.ClockingPointCreate do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "ClockingPointCreate", type: :object, properties: %{
      "Name" => %Schema{type: "string"},
      "Description" => %Schema{type: "string"}
    }})
end
