defmodule TimeclockWeb.OpenApi.Schemas.OrganizationUnit do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "OrganizationUnit", type: :object, properties: %{
      "Id" => %Schema{type: "string", format: "uuid"},
      "Name" => %Schema{type: "string"},
      "ParentOrganizationUnitId" => %Schema{type: "string", format: "uuid"},
      "ParentOrganizationUnitName" => %Schema{type: "string"},
      "LeftSubTreeIndex" => %Schema{type: "integer", format: "int32"},
      "RightSubTreeIndex" => %Schema{type: "integer", format: "int32"},
      "HasChildren" => %Schema{type: "boolean"},
      "LocalizedName" => %Schema{type: "string"},
      "DisplayName" => %Schema{type: "string"}
    }})
end
