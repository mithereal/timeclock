defmodule TimeclockWeb.OpenApi.Schemas.AnalyticsActivity do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "AnalyticsActivity", type: :object, properties: %{
      "Name" => %Schema{type: "string"},
      "Properties" => %Schema{type: "object"}
    }})
end
