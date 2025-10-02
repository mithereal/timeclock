defmodule TimeclockWeb.OpenApi.Schemas.CurrentPeriodVacationQuota do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "CurrentPeriodVacationQuota", type: :object, properties: %{
      "Value" => %Schema{type: "number", format: "double"},
      "ValueType" => %Schema{type: "string"},
      "VacationTransferDate" => %Schema{type: "string", format: "date"}
    }})
end
