defmodule TimeclockWeb.OpenApi.Schemas.Tag do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "Tag", type: :object, properties: %{
      "Id" => %Schema{type: "string", format: "uuid"},
      "Name" => %Schema{type: "string"},
      "Color" => %Schema{type: "integer", format: "int32"}
    }})
end
