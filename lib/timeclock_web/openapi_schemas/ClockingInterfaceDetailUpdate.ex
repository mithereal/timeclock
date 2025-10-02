defmodule TimeclockWeb.OpenApi.Schemas.ClockingInterfaceDetailUpdate do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "ClockingInterfaceDetailUpdate", type: :object, properties: %{
      "Id" => %Schema{type: "string", format: "uuid"},
      "ButtonIndex" => %Schema{type: "integer", format: "int32"},
      "EventIndex" => %Schema{type: "integer", format: "int32"},
      "ClockingDefinitionId" => %Schema{type: "string", format: "uuid"},
      "IconId" => %Schema{type: "integer", format: "int32"},
      "IsDefault" => %Schema{type: "boolean"}
    }})
end
