defmodule TimeclockWeb.OpenApi.Schemas.ApprovalRequestLog do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "ApprovalRequestLog", type: :object, properties: %{
      "UserId" => %Schema{type: "string", format: "uuid"},
      "UserName" => %Schema{type: "string"},
      "Action" => %Schema{type: "integer", format: "int32"},
      "DateTime" => %Schema{type: "string", format: "date-time"}
    }})
end
