defmodule TimeclockWeb.OpenApi.Schemas.ClockButton do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "ClockButton", type: :object, properties: %{
      "ClockingDefinitionId" => %Schema{type: "string", format: "uuid"},
      "ClockingDefinitionName" => %Schema{type: "string"},
      "IconId" => %Schema{type: "integer", format: "int32"},
      "IsEnabled" => %Schema{type: "boolean"},
      "Color" => %Schema{type: "string"}
    }})
end
