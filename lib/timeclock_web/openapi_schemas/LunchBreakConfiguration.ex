defmodule TimeclockWeb.OpenApi.Schemas.LunchBreakConfiguration do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "LunchBreakConfiguration", type: :object, properties: %{
      "StartingLunchBreakRuleSettingsId" => %Schema{type: "integer", format: "int32"},
      "MaximumDuration" => %Schema{type: "integer", format: "int32"},
      "MinimumDuration" => %Schema{type: "integer", format: "int32"},
      "StartOffset" => %Schema{type: "integer", format: "int32"},
      "EndOffset" => %Schema{type: "integer", format: "int32"}
    }})
end
