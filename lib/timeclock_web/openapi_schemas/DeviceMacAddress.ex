defmodule TimeclockWeb.OpenApi.Schemas.DeviceMacAddress do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "DeviceMacAddress", type: :object, properties: %{
      "Id" => %Schema{type: "string", format: "uuid"},
      "MacAddress" => %Schema{type: "string"}
    }})
end
