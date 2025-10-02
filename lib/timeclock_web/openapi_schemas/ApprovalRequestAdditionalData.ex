defmodule TimeclockWeb.OpenApi.Schemas.ApprovalRequestAdditionalData do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "ApprovalRequestAdditionalData", type: :object, properties: %{
      "IntegerValue" => %Schema{type: "string"},
      "TimeValue" => %Schema{type: "string"},
      "AppliersComment" => %Schema{type: "string"},
      "ApproversComment" => %Schema{type: "string"}
    }})
end
