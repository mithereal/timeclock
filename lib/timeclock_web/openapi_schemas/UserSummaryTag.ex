defmodule TimeclockWeb.OpenApi.Schemas.UserSummaryTag do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "UserSummaryTag", type: :object, properties: %{
      "Id" => %Schema{type: "string", format: "uuid"},
      "Name" => %Schema{type: "string"},
      "Color" => %Schema{type: "integer", format: "int32"}
    }})
end
