defmodule TimeclockWeb.OpenApi.Schemas.Holiday do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "Holiday", type: :object, properties: %{
      "Name" => %Schema{type: "string"},
      "Date" => %Schema{type: "string", format: "date-time"}
    }})
end
