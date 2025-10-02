defmodule TimeclockWeb.OpenApi.Schemas.CategoryDefinitionCreate do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "CategoryDefinitionCreate", type: :object, properties: %{
      "Name" => %Schema{type: "string"},
      "PresenceStatus" => %Schema{type: "integer", format: "int32"},
      "PaidTimeStatus" => %Schema{type: "integer", format: "int32"},
      "Color" => %Schema{type: "integer", format: "int32"},
      "IconId" => %Schema{type: "string"}
    }})
end
