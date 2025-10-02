defmodule TimeclockWeb.OpenApi.Schemas.PaidTimeDayParameters do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "PaidTimeDayParameters", type: :object, properties: %{
      "Duration" => %Schema{type: "integer", format: "int32"},
      "Offset" => %Schema{type: "integer", format: "int32"},
      "Limit" => %Schema{type: "integer", format: "int32"}
    }})
end
