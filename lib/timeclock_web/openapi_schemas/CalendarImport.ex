defmodule TimeclockWeb.OpenApi.Schemas.CalendarImport do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "CalendarImport", type: :object, properties: %{
      "CalendarGroupId" => %Schema{type: "string", format: "uuid"},
      "Country" => %Schema{type: "string"},
      "Region" => %Schema{type: "string"}
    }})
end
