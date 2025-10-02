defmodule TimeclockWeb.OpenApi.Schemas.UserSummaryTagRestriction do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "UserSummaryTagRestriction", type: :object, properties: %{
      "Id" => %Schema{type: "string", format: "uuid"},
      "Name" => %Schema{type: "string"}
    }})
end
