defmodule TimeclockWeb.OpenApi.Schemas.UserWorkPlanBulkUpdate do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "UserWorkPlanBulkUpdate", type: :object, properties: %{
      "UserId" => %Schema{type: "string", format: "uuid"},
      "WorkPlanId" => %Schema{type: "string", format: "uuid"},
      "MemberFrom" => %Schema{type: "string", format: "date-time"},
      "MemberTo" => %Schema{type: "string", format: "date-time"},
      "CycleStartIndex" => %Schema{type: "integer", format: "int32"}
    }})
end
