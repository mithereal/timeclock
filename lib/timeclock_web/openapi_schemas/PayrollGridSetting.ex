defmodule TimeclockWeb.OpenApi.Schemas.PayrollGridSetting do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "PayrollGridSetting", type: :object, properties: %{
      "Name" => %Schema{type: "string"},
      "Label" => %Schema{type: "string"},
      "Tooltip" => %Schema{type: "string"},
      "Type" => %Schema{type: "integer", format: "int32"},
      "OrderIndex" => %Schema{type: "integer", format: "int32"},
      "SelectedValue" => %Schema{type: "string"},
      "SelectedNumberValue" => %Schema{type: "string"},
      "AvailableValues" => %Schema{type: "object"},
      "GridSettings" => %Schema{type: "object"},
      "AvailableValueLengthOptions" => %Schema{type: "array"},
      "Position" => %Schema{type: "integer", format: "int32"},
      "PayrollId" => %Schema{type: "string"},
      "Value" => %Schema{type: "string"},
      "DataField" => %Schema{type: "string"},
      "CalculateDisplayValue" => %Schema{type: "string"},
      "Caption" => %Schema{type: "string"},
      "Width" => %Schema{type: "string"}
    }})
end
