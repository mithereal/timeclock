defmodule TimeclockWeb.OpenApi.Schemas.TenantPaymentMethodUpdate do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "TenantPaymentMethodUpdate", type: :object, properties: %{
      "SubscriptionId" => %Schema{type: "string"},
      "PaymentType" => %Schema{type: "string"},
      "PaymentMethodId" => %Schema{type: "string"}
    }})
end
