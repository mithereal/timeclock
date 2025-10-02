defmodule TimeclockWeb.OpenApi.Schemas.UserBulkInvite do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "UserBulkInvite", type: :object, properties: %{
      "UserIds" => %Schema{type: "array"}
    }})
end
