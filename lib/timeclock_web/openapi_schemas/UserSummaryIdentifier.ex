defmodule TimeclockWeb.OpenApi.Schemas.UserSummaryIdentifier do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "UserSummaryIdentifier", type: :object, properties: %{
      "Id" => %Schema{type: "string", format: "uuid"},
      "Value" => %Schema{type: "string"}
    }})
end
