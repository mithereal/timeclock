defmodule TimeclockWeb.OpenApi.Schemas.UserClockingPointRestrictionUpdate do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "UserClockingPointRestrictionUpdate", type: :object, properties: %{
      "ClockingPointIds" => %Schema{type: "array"}
    }})
end
