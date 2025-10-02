defmodule TimeclockWeb.OpenApi.Schemas.ColumnFilter do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "ColumnFilter", type: :object, properties: %{
      "Type" => %Schema{type: "integer", format: "int32"},
      "Value" => %Schema{type: "number", format: "double"},
      "IsEnabled" => %Schema{type: "boolean"}
    }})
end
