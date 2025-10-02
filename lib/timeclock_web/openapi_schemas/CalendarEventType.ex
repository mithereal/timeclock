defmodule TimeclockWeb.OpenApi.Schemas.CalendarEventType do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "CalendarEventType", type: :object, properties: %{
      "Id" => %Schema{type: "string", format: "uuid"},
      "Name" => %Schema{type: "string"},
      "Code" => %Schema{type: "integer", format: "int32"}
    }})
end
