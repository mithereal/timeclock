defmodule MyApp.Calculations.Calculation do
  use Ecto.Schema
  import Ecto.Changeset

  schema "calculations" do
    field :date_from, :date
    field :date_to, :date
    field :users_count, :integer
    field :users_calculations, :map
    field :calculation_details_summaries, :map

    field :plan_sum_value, :decimal
    field :difference_sum_value, :decimal
    field :paid_presence_sum_value, :decimal
    field :paid_all_day_absence_sum_value, :decimal
    field :missing_presence_sum_value, :decimal
    field :unpaid_presence_sum_value, :decimal
    field :work_free_days_sum_value, :decimal
    field :work_days_sum_value, :decimal

    field :is_calculation_valid, :boolean, default: false

    timestamps()
  end

  @doc """
  Changeset for Calculation
  """
  def changeset(calculation, attrs) do
    calculation
    |> cast(attrs, [
      :date_from,
      :date_to,
      :users_count,
      :users_calculations,
      :calculation_details_summaries,
      :plan_sum_value,
      :difference_sum_value,
      :paid_presence_sum_value,
      :paid_all_day_absence_sum_value,
      :missing_presence_sum_value,
      :unpaid_presence_sum_value,
      :work_free_days_sum_value,
      :work_days_sum_value,
      :is_calculation_valid
    ])
    |> validate_required([:date_from, :date_to])
  end
end
