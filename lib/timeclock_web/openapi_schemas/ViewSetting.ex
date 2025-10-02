defmodule TimeclockWeb.OpenApi.Schemas.ViewSetting do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "ViewSetting", type: :object, properties: %{
      "Id" => %Schema{type: "string", format: "uuid"},
      "Name" => %Schema{type: "string"},
      "ViewId" => %Schema{type: "integer", format: "int32"},
      "FilterValues" => %Schema{type: "string"},
      "CustomFilters" => %Schema{type: "string"},
      "GridValues" => %Schema{type: "string"}
    }})
end
