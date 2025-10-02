defmodule TimeclockWeb.OpenApi.Schemas.GuidStringKeyValuePair do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "GuidStringKeyValuePair", type: :object, properties: %{
      "Key" => %Schema{type: "string", format: "uuid"},
      "Value" => %Schema{type: "string"}
    }})
end
