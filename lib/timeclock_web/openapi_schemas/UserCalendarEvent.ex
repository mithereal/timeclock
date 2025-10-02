defmodule TimeclockWeb.OpenApi.Schemas.UserCalendarEvent do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "UserCalendarEvent", type: :object, properties: %{
      "UserId" => %Schema{type: "string", format: "uuid"},
      "UserName" => %Schema{type: "string"},
      "WeekendDates" => %Schema{type: "array"},
      "Holidays" => %Schema{type: "array"}
    }})
end
