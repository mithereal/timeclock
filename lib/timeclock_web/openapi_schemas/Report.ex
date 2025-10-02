defmodule TimeclockWeb.OpenApi.Schemas.Report do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "Report", type: :object, properties: %{
      "Id" => %Schema{type: "string"},
      "Name" => %Schema{type: "string"},
      "IsPayrollExport" => %Schema{type: "boolean"},
      "IsDefault" => %Schema{type: "boolean"},
      "Templates" => %Schema{type: "array"}
    }})
end
