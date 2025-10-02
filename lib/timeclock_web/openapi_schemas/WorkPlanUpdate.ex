defmodule TimeclockWeb.OpenApi.Schemas.WorkPlanUpdate do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "WorkPlanUpdate", type: :object, properties: %{
      "Id" => %Schema{type: "string", format: "uuid"},
      "Name" => %Schema{type: "string"},
      "Type" => %Schema{type: "integer", format: "int32"},
      "WorkPlanPolicies" => %Schema{type: "array"}
    }})
end
