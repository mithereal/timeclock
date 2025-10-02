defmodule TimeclockWeb.OpenApi.Schemas.ViesVatVerification do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "ViesVatVerification", type: :object, properties: %{
      "IsValid" => %Schema{type: "boolean"},
      "UserError" => %Schema{type: "string"},
      "Name" => %Schema{type: "string"},
      "Address" => %Schema{type: "string"},
      "VatNumber" => %Schema{type: "string"},
      "ViesVatApproximate" => %Schema{type: "string"}
    }})
end
