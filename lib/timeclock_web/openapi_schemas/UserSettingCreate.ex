defmodule TimeclockWeb.OpenApi.Schemas.UserSettingCreate do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "UserSettingCreate", type: :object, properties: %{
      "UserId" => %Schema{type: "string", format: "uuid"},
      "Name" => %Schema{type: "string"},
      "Value" => %Schema{type: "string"}
    }})
end
