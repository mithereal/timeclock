defmodule TimeclockWeb.OpenApi.Schemas.ShiftColorRule do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "ShiftColorRule", type: :object, properties: %{
      "ClockingTimeInterval" => %Schema{type: "string"},
      "ColorIndex" => %Schema{type: "integer", format: "int32"},
      "StartingWorkPlanRuleSettingsId" => %Schema{type: "integer", format: "int32"}
    }})
end
