defmodule TimeclockWeb.OpenApi.Schemas.UserTimePolicy do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "UserTimePolicy", type: :object, properties: %{
      "UserId" => %Schema{type: "string", format: "uuid"},
      "TimePolicyId" => %Schema{type: "string", format: "uuid"},
      "DateTime" => %Schema{type: "string", format: "date-time"},
      "IsCalculated" => %Schema{type: "boolean"}
    }})
end
