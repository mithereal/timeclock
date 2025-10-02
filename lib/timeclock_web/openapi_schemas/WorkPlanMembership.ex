defmodule TimeclockWeb.OpenApi.Schemas.WorkPlanMembership do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "WorkPlanMembership", type: :object, properties: %{
      "Id" => %Schema{type: "string", format: "uuid"},
      "UserId" => %Schema{type: "string", format: "uuid"},
      "WorkPlanId" => %Schema{type: "string", format: "uuid"},
      "WorkPlanName" => %Schema{type: "string"},
      "MemberFrom" => %Schema{type: "string", format: "date-time"},
      "MemberTo" => %Schema{type: "string", format: "date-time"},
      "CycleStart" => %Schema{type: "string", format: "date-time"},
      "CycleStartIndex" => %Schema{type: "integer", format: "int32"}
    }})
end
