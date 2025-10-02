defmodule TimeclockWeb.OpenApi.Schemas.UserTagUpdate do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "UserTagUpdate", type: :object, properties: %{
      "TagIds" => %Schema{type: "array"}
    }})
end
