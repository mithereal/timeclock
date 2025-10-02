defmodule TimeclockWeb.OpenApi.Schemas.PresenceStatus do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "PresenceStatus", type: :object, properties: %{
      "Timestamp" => %Schema{type: "string", format: "date-time"},
      "UserPresences" => %Schema{type: "array"},
      "IsCalculationValid" => %Schema{type: "boolean"},
      "UsersCount" => %Schema{type: "integer", format: "int32"},
      "PresenceStatusSummary" => %Schema{type: "array"}
    }})
end
