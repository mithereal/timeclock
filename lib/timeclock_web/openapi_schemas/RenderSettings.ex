defmodule TimeclockWeb.OpenApi.Schemas.RenderSettings do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "RenderSettings", type: :object, properties: %{
      "ShowDetailsInHeader" => %Schema{type: "boolean"},
      "PageOrientation" => %Schema{type: "integer", format: "int32"},
      "Grouping" => %Schema{type: "boolean"}
    }})
end
