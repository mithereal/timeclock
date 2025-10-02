defmodule TimeclockWeb.OpenApi.Schemas.TimePolicyBulkCopy do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "TimePolicyBulkCopy", type: :object, properties: %{
      "TimePolicyIds" => %Schema{type: "array"}
    }})
end
