defmodule TimeclockWeb.OpenApi.Schemas.UserTagBulkUpdate do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "UserTagBulkUpdate", type: :object, properties: %{
      "UserId" => %Schema{type: "string", format: "uuid"},
      "TagIds" => %Schema{type: "array"}
    }})
end
