defmodule TimeclockWeb.OpenApi.Schemas.PresenceStatusSummary do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "PresenceStatusSummary", type: :object, properties: %{
      "Status" => %Schema{type: "integer", format: "int32"},
      "Count" => %Schema{type: "integer", format: "int32"}
    }})
end
