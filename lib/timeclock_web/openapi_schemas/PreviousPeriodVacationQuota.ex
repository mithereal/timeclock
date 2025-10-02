defmodule TimeclockWeb.OpenApi.Schemas.PreviousPeriodVacationQuota do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "PreviousPeriodVacationQuota", type: :object, properties: %{
      "Value" => %Schema{type: "number", format: "double"},
      "ValueType" => %Schema{type: "string"},
      "VacationCutDate" => %Schema{type: "string", format: "date"}
    }})
end
