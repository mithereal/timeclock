defmodule TimeclockWeb.OpenApi.Schemas.CounterAssignment do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "CounterAssignment", type: :object, properties: %{
      "Id" => %Schema{type: "string", format: "uuid"},
      "Type" => %Schema{type: "integer", format: "int32"},
      "ValidFrom" => %Schema{type: "string", format: "date-time"},
      "ValidTo" => %Schema{type: "string", format: "date-time"},
      "DayTypeRestriction" => %Schema{type: "integer", format: "int32"},
      "CounterDefinitionId" => %Schema{type: "string", format: "uuid"}
    }})
end
