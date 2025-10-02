defmodule TimeclockWeb.OpenApi.Schemas.SystemSettingUpdate do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "SystemSettingUpdate", type: :object, properties: %{
      "Id" => %Schema{type: "string", format: "uuid"},
      "Value" => %Schema{type: "string"}
    }})
end
