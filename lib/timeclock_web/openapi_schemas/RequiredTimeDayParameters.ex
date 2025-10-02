defmodule TimeclockWeb.OpenApi.Schemas.RequiredTimeDayParameters do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "RequiredTimeDayParameters", type: :object, properties: %{
      "Duration" => %Schema{type: "integer", format: "int32"},
      "Offset" => %Schema{type: "integer", format: "int32"}
    }})
end
