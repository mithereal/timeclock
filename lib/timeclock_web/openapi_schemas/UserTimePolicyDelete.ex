defmodule TimeclockWeb.OpenApi.Schemas.UserTimePolicyDelete do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "UserTimePolicyDelete", type: :object, properties: %{
      "UserId" => %Schema{type: "string", format: "uuid"},
      "DateFrom" => %Schema{type: "string", format: "date-time"},
      "DateTo" => %Schema{type: "string", format: "date-time"}
    }})
end
