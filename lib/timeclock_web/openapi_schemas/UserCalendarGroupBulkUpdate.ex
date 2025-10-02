defmodule TimeclockWeb.OpenApi.Schemas.UserCalendarGroupBulkUpdate do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "UserCalendarGroupBulkUpdate", type: :object, properties: %{
      "UserId" => %Schema{type: "string", format: "uuid"},
      "CalendarGroupId" => %Schema{type: "string", format: "uuid"},
      "MemberFrom" => %Schema{type: "string", format: "date-time"},
      "MemberTo" => %Schema{type: "string", format: "date-time"}
    }})
end
