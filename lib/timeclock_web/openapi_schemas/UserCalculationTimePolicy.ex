defmodule TimeclockWeb.OpenApi.Schemas.UserCalculationTimePolicy do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "UserCalculationTimePolicy", type: :object, properties: %{
      "Id" => %Schema{type: "string", format: "uuid"},
      "Name" => %Schema{type: "string"},
      "ShortName" => %Schema{type: "string"},
      "Description" => %Schema{type: "string"},
      "Color" => %Schema{type: "integer", format: "int32"},
      "IsCalculated" => %Schema{type: "boolean"}
    }})
end
