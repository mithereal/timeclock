defmodule TimeclockWeb.OpenApi.Schemas.EventValidationPolicyUpdate do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "EventValidationPolicyUpdate", type: :object, properties: %{
      "EventDefinitionId" => %Schema{type: "string", format: "uuid"},
      "IsCommentRequired" => %Schema{type: "boolean"}
    }})
end
