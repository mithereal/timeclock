defmodule TimeclockWeb.OpenApi.Schemas.Subscription do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "Subscription", type: :object, properties: %{
      "Delinquent" => %Schema{type: "boolean"},
      "SubscriptionOptions" => %Schema{type: "integer", format: "int32"},
      "PartnerType" => %Schema{type: "integer", format: "int32"},
      "Status" => %Schema{type: "string"},
      "TrialEnd" => %Schema{type: "string", format: "date-time"},
      "CurrentPeriodStart" => %Schema{type: "string", format: "date-time"},
      "CurrentPeriodEnd" => %Schema{type: "string", format: "date-time"},
      "CancelAt" => %Schema{type: "string", format: "date-time"},
      "Interval" => %Schema{type: "string"}
    }})
end
