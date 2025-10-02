defmodule TimeclockWeb.OpenApi.Schemas.TimeClockStatus do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "TimeClockStatus", type: :object, properties: %{
      "Name" => %Schema{type: "string"},
      "Type" => %Schema{type: "string"},
      "Status" => %Schema{type: "integer", format: "int32"},
      "LastOnline" => %Schema{type: "string", format: "date-time"},
      "LastData" => %Schema{type: "string", format: "date-time"}
    }})
end
