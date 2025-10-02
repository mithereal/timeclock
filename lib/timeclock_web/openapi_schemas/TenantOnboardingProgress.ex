defmodule TimeclockWeb.OpenApi.Schemas.TenantOnboardingProgress do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "TenantOnboardingProgress", type: :object, properties: %{
      "GlobalRules" => %Schema{type: "boolean"},
      "UserImport" => %Schema{type: "boolean"},
      "Reports" => %Schema{type: "boolean"},
      "PaidSubscription" => %Schema{type: "boolean"}
    }})
end
