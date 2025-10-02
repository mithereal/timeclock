defmodule TimeclockWeb.OpenApi.Schemas.WorkPlanSummary do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "WorkPlanSummary", type: :object, properties: %{
      "Id" => %Schema{type: "string", format: "uuid"},
      "Name" => %Schema{type: "string"},
      "Type" => %Schema{type: "integer", format: "int32"},
      "WorkPlanPolicies" => %Schema{type: "array"}
    }})
end
