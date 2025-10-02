defmodule TimeclockWeb.OpenApi.Schemas.WorkPlanPolicyUpdate do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "WorkPlanPolicyUpdate", type: :object, properties: %{
      "Id" => %Schema{type: "string", format: "uuid"},
      "TimePolicyId" => %Schema{type: "string", format: "uuid"},
      "Priority" => %Schema{type: "integer", format: "int32"},
      "DayTypesRestriction" => %Schema{type: "integer", format: "int32"},
      "ArrivalRestrictionFromValue" => %Schema{type: "integer", format: "int32"},
      "ArrivalRestrictionToValue" => %Schema{type: "integer", format: "int32"}
    }})
end
