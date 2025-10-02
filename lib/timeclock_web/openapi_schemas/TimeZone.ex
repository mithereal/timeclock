defmodule TimeclockWeb.OpenApi.Schemas.TimeZone do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "TimeZone", type: :object, properties: %{
      "Id" => %Schema{type: "string"},
      "DisplayName" => %Schema{type: "string"}
    }})
end
