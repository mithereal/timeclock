defmodule Timeclock.Repo.Migrations.CreateUsers do
  def change do
    create table(:users, primary_key: false) do
      # UUID primary key
      add :id, :uuid, primary_key: true, default: fragment("gen_random_uuid()")

      # Personal information
      add :first_name, :string
      add :middle_name, :string
      add :last_name, :string
      add :full_name, :string
      add :birth_date, :date
      add :gender, :string

      # Contact information
      add :address, :string
      add :city, :string
      add :state, :string
      add :phone, :string
      add :mobile, :string
      add :email, :string
      add :picture_uri, :string

      # Custom fields
      add :custom_id, :string
      add :custom_field1, :string
      add :custom_field2, :string
      add :custom_field3, :string
      add :custom_field4, :string
      add :custom_field5, :string
      add :custom_field6, :string
      add :custom_field7, :string
      add :custom_field8, :string
      add :custom_field9, :string
      add :custom_field10, :string

      # Flags
      add :is_time_attendance_user, :boolean, default: false
      add :is_archived, :boolean, default: false
      add :has_user_account, :boolean, default: false
      add :user_account_id, :uuid
      add :user_name, :string
      add :has_assigned_pin, :boolean, default: false

      # Calculation period
      add :calculation_start_date, :date
      add :calculation_stop_date, :date

      timestamps()
    end
  end
end
