defmodule TimeclockWeb.OpenApi.Schemas.ReportTemplate do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "ReportTemplate", type: :object, properties: %{
      "Id" => %Schema{type: "string"},
      "CreatedTimestamp" => %Schema{type: "string", format: "date-time"},
      "UpdatedTimestamp" => %Schema{type: "string", format: "date-time"},
      "Name" => %Schema{type: "string"},
      "Template" => %Schema{type: "string"},
      "UserId" => %Schema{type: "string", format: "uuid"}
    }})
end
