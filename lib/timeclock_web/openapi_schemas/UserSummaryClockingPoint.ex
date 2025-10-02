defmodule TimeclockWeb.OpenApi.Schemas.UserSummaryClockingPoint do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "UserSummaryClockingPoint", type: :object, properties: %{
      "Id" => %Schema{type: "string", format: "uuid"},
      "Name" => %Schema{type: "string"}
    }})
end
