defmodule Timeclock.OrganizationsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Timeclock.Organizations` context.
  """

  @doc """
  Generate a company.
  """
  def company_fixture(attrs \\ %{}) do
    {:ok, company} =
      attrs
      |> Enum.into(%{
        name: "some name",
        registration_number: "some registration_number"
      })
      |> Timeclock.Organizations.create_company()

    company
  end

  @doc """
  Generate a department.
  """
  def department_fixture(attrs \\ %{}) do
    {:ok, department} =
      attrs
      |> Enum.into(%{
        name: "some name"
      })
      |> Timeclock.Organizations.create_department()

    department
  end

  @doc """
  Generate a organization.
  """
  def organization_fixture(attrs \\ %{}) do
    {:ok, organization} =
      attrs
      |> Enum.into(%{
        name: "some name"
      })
      |> Timeclock.Organizations.create_organization()

    organization
  end

  @doc """
  Generate a address.
  """
  def address_fixture(attrs \\ %{}) do
    {:ok, address} =
      attrs
      |> Enum.into(%{
        city: "some city",
        country: "some country",
        postal_code: "some postal_code",
        state: "some state",
        street: "some street"
      })
      |> Timeclock.Organizations.create_address()

    address
  end
end
