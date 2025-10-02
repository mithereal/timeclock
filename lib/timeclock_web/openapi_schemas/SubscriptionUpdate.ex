defmodule TimeclockWeb.OpenApi.Schemas.SubscriptionUpdate do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "SubscriptionUpdate", type: :object, properties: %{
      "Interval" => %Schema{type: "string"},
      "CancelAtPeriodEnd" => %Schema{type: "boolean"},
      "Coupon" => %Schema{type: "string"},
      "SubscriptionItems" => %Schema{type: "array"},
      "PaymentType" => %Schema{type: "string"},
      "OffSession" => %Schema{type: "boolean"}
    }})
end
