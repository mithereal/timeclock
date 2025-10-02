defmodule TimeclockWeb.OpenApi.Schemas.TenantPaymentMethod do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "TenantPaymentMethod", type: :object, properties: %{
      "PaymentMethodId" => %Schema{type: "string"},
      "Type" => %Schema{type: "string"},
      "Card" => %Schema{type: "string"}
    }})
end
