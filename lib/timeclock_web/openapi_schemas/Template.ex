defmodule TimeclockWeb.OpenApi.Schemas.Template do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "Template", type: :object, properties: %{
      "Id" => %Schema{type: "string", format: "uuid"},
      "Name" => %Schema{type: "string"},
      "LastUpdate" => %Schema{type: "string", format: "date-time"}
    }})
end
