defmodule TimeclockWeb.OpenApi.Schemas.WorkPlanCreate do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "WorkPlanCreate", type: :object, properties: %{
      "Name" => %Schema{type: "string"},
      "Type" => %Schema{type: "integer", format: "int32"},
      "WorkPlanPolicies" => %Schema{type: "array"}
    }})
end
