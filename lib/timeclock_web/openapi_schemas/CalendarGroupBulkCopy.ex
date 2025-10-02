defmodule TimeclockWeb.OpenApi.Schemas.CalendarGroupBulkCopy do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "CalendarGroupBulkCopy", type: :object, properties: %{
      "CalendarGroupIds" => %Schema{type: "array"}
    }})
end
