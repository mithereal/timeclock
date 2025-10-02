defmodule TimeclockWeb.OpenApi.Schemas.UserCalculationPage do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "UserCalculationPage", type: :object, properties: %{
      "UserCalculations" => %Schema{type: "array"},
      "TotalCount" => %Schema{type: "integer", format: "int32"}
    }})
end
