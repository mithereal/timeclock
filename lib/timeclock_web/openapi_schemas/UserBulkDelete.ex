defmodule TimeclockWeb.OpenApi.Schemas.UserBulkDelete do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "UserBulkDelete", type: :object, properties: %{
      "UserIds" => %Schema{type: "array"}
    }})
end
