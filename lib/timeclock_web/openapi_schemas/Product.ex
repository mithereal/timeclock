defmodule TimeclockWeb.OpenApi.Schemas.Product do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "Product", type: :object, properties: %{
      "Id" => %Schema{type: "string", format: "uuid"},
      "Code" => %Schema{type: "integer", format: "int32"},
      "Name" => %Schema{type: "string"},
      "Description" => %Schema{type: "string"},
      "ApplicationUri" => %Schema{type: "string"},
      "LogoUri" => %Schema{type: "string"},
      "HasTrial" => %Schema{type: "boolean"},
      "IsActive" => %Schema{type: "boolean"}
    }})
end
