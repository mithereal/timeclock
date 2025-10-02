defmodule TimeclockWeb.OpenApi.Schemas.Identifier do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "Identifier", type: :object, properties: %{
      "Id" => %Schema{type: "string", format: "uuid"},
      "Value" => %Schema{type: "string"},
      "UserName" => %Schema{type: "string"}
    }})
end
