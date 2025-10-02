defmodule TimeclockWeb.OpenApi.Schemas.SystemSettingCreate do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "SystemSettingCreate", type: :object, properties: %{
      "Type" => %Schema{type: "integer", format: "int32"},
      "Value" => %Schema{type: "string"}
    }})
end
