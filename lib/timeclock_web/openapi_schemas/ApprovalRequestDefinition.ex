defmodule TimeclockWeb.OpenApi.Schemas.ApprovalRequestDefinition do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "ApprovalRequestDefinition", type: :object, properties: %{
      "Id" => %Schema{type: "string", format: "uuid"},
      "Name" => %Schema{type: "string"},
      "RequestType" => %Schema{type: "string"},
      "StartTimeParameterRequired" => %Schema{type: "boolean"},
      "EndTimeParameterRequired" => %Schema{type: "boolean"},
      "NumericValueRequired" => %Schema{type: "boolean"},
      "TimeValueRequired" => %Schema{type: "boolean"}
    }})
end
