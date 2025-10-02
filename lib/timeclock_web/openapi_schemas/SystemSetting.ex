defmodule TimeclockWeb.OpenApi.Schemas.SystemSetting do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "SystemSetting", type: :object, properties: %{
      "Id" => %Schema{type: "string", format: "uuid"},
      "Type" => %Schema{type: "integer", format: "int32"},
      "Value" => %Schema{type: "string"}
    }})
end
