defmodule TimeclockWeb.OpenApi.Schemas.UserVacationQuota do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "UserVacationQuota", type: :object, properties: %{
      "UserId" => %Schema{type: "string", format: "uuid"},
      "PreviousPeriodVacationQuota" => %Schema{type: "string"},
      "CurrentPeriodVacationQuota" => %Schema{type: "string"}
    }})
end
