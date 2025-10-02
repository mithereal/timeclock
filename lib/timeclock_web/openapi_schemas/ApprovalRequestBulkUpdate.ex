defmodule TimeclockWeb.OpenApi.Schemas.ApprovalRequestBulkUpdate do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "ApprovalRequestBulkUpdate", type: :object, properties: %{
      "ApprovalRequestId" => %Schema{type: "string", format: "uuid"},
      "ApprovalAction" => %Schema{type: "integer", format: "int32"}
    }})
end
