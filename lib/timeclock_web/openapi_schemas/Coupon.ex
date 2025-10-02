defmodule TimeclockWeb.OpenApi.Schemas.Coupon do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "Coupon", type: :object, properties: %{
      "CouponId" => %Schema{type: "string"},
      "AmountOff" => %Schema{type: "integer", format: "int64"},
      "PercentOff" => %Schema{type: "number", format: "double"},
      "Duration" => %Schema{type: "string"},
      "Name" => %Schema{type: "string"}
    }})
end
