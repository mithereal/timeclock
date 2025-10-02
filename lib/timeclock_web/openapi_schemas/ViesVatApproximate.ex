defmodule TimeclockWeb.OpenApi.Schemas.ViesVatApproximate do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "ViesVatApproximate", type: :object, properties: %{
      "Name" => %Schema{type: "string"},
      "Street" => %Schema{type: "string"},
      "PostalCode" => %Schema{type: "string"},
      "City" => %Schema{type: "string"},
      "CompanyType" => %Schema{type: "string"}
    }})
end
