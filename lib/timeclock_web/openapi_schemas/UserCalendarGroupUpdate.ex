defmodule TimeclockWeb.OpenApi.Schemas.UserCalendarGroupUpdate do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "UserCalendarGroupUpdate", type: :object, properties: %{
      "UserId" => %Schema{type: "string", format: "uuid"},
      "CalendarId" => %Schema{type: "string", format: "uuid"},
      "MemberFrom" => %Schema{type: "string", format: "date-time"},
      "MemberTo" => %Schema{type: "string", format: "date-time"}
    }})
end
