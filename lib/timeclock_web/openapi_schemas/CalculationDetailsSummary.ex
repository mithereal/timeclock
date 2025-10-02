defmodule TimeclockWeb.OpenApi.Schemas.CalculationDetailsSummary do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "CalculationDetailsSummary", type: :object, properties: %{
      "CalculationDetails" => %Schema{type: "array"}
    }})
end
