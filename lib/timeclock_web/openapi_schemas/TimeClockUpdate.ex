defmodule TimeclockWeb.OpenApi.Schemas.TimeClockUpdate do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "TimeClockUpdate", type: :object, properties: %{
      "Id" => %Schema{type: "string", format: "uuid"},
      "Name" => %Schema{type: "string"},
      "TimeZone" => %Schema{type: "string"},
      "Language" => %Schema{type: "string"},
      "CanOpenDoors" => %Schema{type: "boolean"}
    }})
end
