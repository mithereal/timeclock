defmodule TimeclockWeb.OpenApi.Schemas.UserDailyCalculation do
  require OpenApiSpex
  OpenApiSpex.schema(%{title: "UserDailyCalculation", type: :object, properties: %{
      "UserId" => %Schema{type: "string", format: "uuid"},
      "FirstName" => %Schema{type: "string"},
      "MiddleName" => %Schema{type: "string"},
      "LastName" => %Schema{type: "string"},
      "UserName" => %Schema{type: "string"},
      "Date" => %Schema{type: "string", format: "date"},
      "DailyComment" => %Schema{type: "string"},
      "ShiftStartMarkers" => %Schema{type: "array"},
      "CalculationResultSegments" => %Schema{type: "array"},
      "PlannedPresenceSegments" => %Schema{type: "array"},
      "Exceptions" => %Schema{type: "array"},
      "Accruals" => %Schema{type: "array"},
      "Categories" => %Schema{type: "array"},
      "CalculationResultSummary" => %Schema{type: "string"},
      "Absences" => %Schema{type: "array"},
      "Adjustments" => %Schema{type: "array"},
      "Clockings" => %Schema{type: "array"},
      "MissingEventExceptions" => %Schema{type: "array"},
      "IsCalculationValid" => %Schema{type: "boolean"},
      "PrevalentCategory" => %Schema{type: "string"},
      "IsHoliday" => %Schema{type: "boolean"},
      "IsWeekend" => %Schema{type: "boolean"},
      "HolidayName" => %Schema{type: "string"},
      "TimePolicy" => %Schema{type: "string"},
      "IsPriorCalculationStartDate" => %Schema{type: "boolean"},
      "IsAfterCalculationEndDate" => %Schema{type: "boolean"},
      "UsingGlobalTimeRules" => %Schema{type: "boolean"}
    }})
end
