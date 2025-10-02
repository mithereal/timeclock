defmodule TimeclockWeb.OpenApi.Schemas.EventValidationPolicy do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "EventValidationPolicy", type: :object, properties: %{
      "Id" => %Schema{type: "string", format: "uuid"},
      "EventDefinitionId" => %Schema{type: "string", format: "uuid"},
      "IsCommentRequired" => %Schema{type: "boolean"}
    }})
end
