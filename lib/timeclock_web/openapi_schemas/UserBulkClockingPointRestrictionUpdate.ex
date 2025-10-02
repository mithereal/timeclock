defmodule TimeclockWeb.OpenApi.Schemas.UserBulkClockingPointRestrictionUpdate do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "UserBulkClockingPointRestrictionUpdate", type: :object, properties: %{
      "UserId" => %Schema{type: "string", format: "uuid"},
      "ClockingPointIds" => %Schema{type: "array"}
    }})
end
