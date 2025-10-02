defmodule TimeclockWeb.OpenApi.Schemas.UserWorkPlanUpdate do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "UserWorkPlanUpdate", type: :object, properties: %{
      "WorkPlanId" => %Schema{type: "string", format: "uuid"},
      "MemberFrom" => %Schema{type: "string", format: "date-time"},
      "MemberTo" => %Schema{type: "string", format: "date-time"},
      "CycleStart" => %Schema{type: "string", format: "date-time"},
      "CycleStartIndex" => %Schema{type: "integer", format: "int32"}
    }})
end
