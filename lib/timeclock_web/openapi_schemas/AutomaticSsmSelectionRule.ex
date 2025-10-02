defmodule TimeclockWeb.OpenApi.Schemas.AutomaticSsmSelectionRule do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "AutomaticSsmSelectionRule", type: :object, properties: %{
      "ClockingTimeInterval" => %Schema{type: "string"},
      "CalculatedSsmTime" => %Schema{type: "integer", format: "int32"},
      "ValidDays" => %Schema{type: "integer", format: "int32"},
      "StartingWorkPlanRuleSettingsId" => %Schema{type: "integer", format: "int32"}
    }})
end
