defmodule TimeclockWeb.OpenApi.Schemas.CounterCategoryDefinitionRestrictionSummary do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "CounterCategoryDefinitionRestrictionSummary", type: :object, properties: %{
      "Id" => %Schema{type: "string", format: "uuid"},
      "CategoryDefinitionId" => %Schema{type: "string", format: "uuid"},
      "CategoryDefinition" => %Schema{type: "string"}
    }})
end
