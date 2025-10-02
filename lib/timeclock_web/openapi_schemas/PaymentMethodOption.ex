defmodule TimeclockWeb.OpenApi.Schemas.PaymentMethodOption do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "PaymentMethodOption", type: :object, properties: %{
      "Name" => %Schema{type: "string"},
      "Type" => %Schema{type: "string"}
    }})
end
