defmodule TimeclockWeb.OpenApi.Schemas.UserRecalculateStatus do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "UserRecalculateStatus", type: :object, properties: %{
      "UserId" => %Schema{type: "string", format: "uuid"},
      "Status" => %Schema{type: "integer", format: "int32"}
    }})
end
