defmodule TimeclockWeb.OpenApi.Schemas.CategoryDefinition do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "CategoryDefinition", type: :object, properties: %{
      "Id" => %Schema{type: "string", format: "uuid"},
      "Name" => %Schema{type: "string"},
      "PresenceStatus" => %Schema{type: "integer", format: "int32"},
      "PaidTimeStatus" => %Schema{type: "integer", format: "int32"},
      "Color" => %Schema{type: "integer", format: "int32"},
      "IconId" => %Schema{type: "string"},
      "Code" => %Schema{type: "integer", format: "int32"}
    }})
end
