defmodule TimeclockWeb.OpenApi.Schemas.WorkPlan do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "WorkPlan", type: :object, properties: %{
      "Id" => %Schema{type: "string", format: "uuid"},
      "Name" => %Schema{type: "string"},
      "Type" => %Schema{type: "integer", format: "int32"}
    }})
end
