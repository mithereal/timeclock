defmodule TimeclockWeb.OpenApi.Schemas.UserTagRestrictionUpdate do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "UserTagRestrictionUpdate", type: :object, properties: %{
      "TagIds" => %Schema{type: "array"}
    }})
end
