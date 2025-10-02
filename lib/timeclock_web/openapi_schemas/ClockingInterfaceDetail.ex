defmodule TimeclockWeb.OpenApi.Schemas.ClockingInterfaceDetail do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "ClockingInterfaceDetail", type: :object, properties: %{
      "Id" => %Schema{type: "string", format: "uuid"},
      "ButtonIndex" => %Schema{type: "integer", format: "int32"},
      "EventIndex" => %Schema{type: "integer", format: "int32"},
      "ClockingDefinitionId" => %Schema{type: "string", format: "uuid"},
      "ClockingDefinitionName" => %Schema{type: "string"},
      "IconId" => %Schema{type: "integer", format: "int32"},
      "IsDefault" => %Schema{type: "boolean"}
    }})
end
