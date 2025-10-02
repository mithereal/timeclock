defmodule TimeclockWeb.OpenApi.Schemas.CurrentBalance do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "CurrentBalance", type: :object, properties: %{
      "Balance" => %Schema{type: "integer", format: "int32"},
      "BalanceText" => %Schema{type: "string"},
      "RunningBalance" => %Schema{type: "integer", format: "int32"},
      "VacationBalance" => %Schema{type: "number", format: "double"},
      "BalanceResponseMode" => %Schema{type: "integer", format: "int32"},
      "Greeting" => %Schema{type: "string"}
    }})
end
