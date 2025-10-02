defmodule TimeclockWeb.OpenApi.Schemas.IdentifierUpdate do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "IdentifierUpdate", type: :object, properties: %{
      "Id" => %Schema{type: "string", format: "uuid"},
      "Value" => %Schema{type: "string"}
    }})
end
