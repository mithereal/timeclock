defmodule Timeclock.Accounts.Account do
  use Ecto.Schema
  import Ecto.Changeset

  # UUID primary key
  @primary_key {:id, :binary_id, autogenerate: true}
  @derive {Phoenix.Param, key: :id}
  schema "user_accounts" do
    # Personal information
    field :first_name, :string
    field :middle_name, :string
    field :last_name, :string
    field :full_name, :string
    field :birth_date, :date
    field :gender, :string

    # Contact information
    field :address, :string
    field :city, :string
    field :state, :string
    field :phone, :string
    field :mobile, :string
    field :email, :string
    field :picture_uri, :string

    # Custom fields
    field :custom_id, :string
    field :custom_field1, :string
    field :custom_field2, :string
    field :custom_field3, :string
    field :custom_field4, :string
    field :custom_field5, :string
    field :custom_field6, :string
    field :custom_field7, :string
    field :custom_field8, :string
    field :custom_field9, :string
    field :custom_field10, :string

    # Flags
    field :is_time_attendance_user, :boolean, default: false
    field :is_archived, :boolean, default: false
    field :has_user_account, :boolean, default: false
    field :user_account_id, :binary_id
    field :user_name, :string
    field :has_assigned_pin, :boolean, default: false

    # Calculation period
    field :calculation_start_date, :date
    field :calculation_stop_date, :date

    timestamps()
  end

  @doc """
  Builds a changeset for creating or updating a User.
  """
  def changeset(user, attrs) do
    user
    |> cast(attrs, [
      :first_name,
      :middle_name,
      :last_name,
      :full_name,
      :birth_date,
      :gender,
      :address,
      :city,
      :state,
      :phone,
      :mobile,
      :email,
      :picture_uri,
      :custom_id,
      :custom_field1,
      :custom_field2,
      :custom_field3,
      :custom_field4,
      :custom_field5,
      :custom_field6,
      :custom_field7,
      :custom_field8,
      :custom_field9,
      :custom_field10,
      :is_time_attendance_user,
      :is_archived,
      :has_user_account,
      :user_account_id,
      :user_name,
      :has_assigned_pin,
      :calculation_start_date,
      :calculation_stop_date
    ])
    |> validate_required([:first_name, :last_name, :email])
    |> validate_format(:email, ~r/@/)
  end
end
