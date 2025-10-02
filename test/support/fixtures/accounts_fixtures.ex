defmodule Timeclock.AccountsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Timeclock.Accounts` context.
  """

  @doc """
  Generate a user.
  """
  def user_fixture(attrs \\ %{}) do
    {:ok, user} =
      attrs
      |> Enum.into(%{
        email: "some email",
        first_name: "some first_name",
        last_name: "some last_name",
        password_hash: "some password_hash"
      })
      |> Timeclock.Accounts.create_user()

    user
  end

  @doc """
  Generate a role.
  """
  def role_fixture(attrs \\ %{}) do
    {:ok, role} =
      attrs
      |> Enum.into(%{
        name: "some name",
        permissions: ["option1", "option2"]
      })
      |> Timeclock.Accounts.create_role()

    role
  end

  @doc """
  Generate a manager.
  """
  def manager_fixture(attrs \\ %{}) do
    {:ok, manager} =
      attrs
      |> Enum.into(%{})
      |> Timeclock.Accounts.create_manager()

    manager
  end

  @doc """
  Generate a employee.
  """
  def employee_fixture(attrs \\ %{}) do
    {:ok, employee} =
      attrs
      |> Enum.into(%{
        hired_at: ~U[2025-10-05 10:49:00Z],
        position: "some position"
      })
      |> Timeclock.Accounts.create_employee()

    employee
  end
end
