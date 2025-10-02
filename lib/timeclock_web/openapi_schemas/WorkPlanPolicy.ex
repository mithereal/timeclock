defmodule TimeclockWeb.OpenApi.Schemas.WorkPlanPolicy do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "WorkPlanPolicy", type: :object, properties: %{
      "Id" => %Schema{type: "string", format: "uuid"},
      "TimePolicyId" => %Schema{type: "string", format: "uuid"},
      "TimePolicyName" => %Schema{type: "string"},
      "Priority" => %Schema{type: "integer", format: "int32"},
      "DayTypesRestriction" => %Schema{type: "integer", format: "int32"},
      "ArrivalRestrictionFromValue" => %Schema{type: "integer", format: "int32"},
      "ArrivalRestrictionToValue" => %Schema{type: "integer", format: "int32"}
    }})
end
