defmodule Timeclock.OrganizationsTest do
  use Timeclock.DataCase

  alias Timeclock.Organizations

  describe "companies" do
    alias Timeclock.Organizations.Company

    import Timeclock.OrganizationsFixtures

    @invalid_attrs %{name: nil, registration_number: nil}

    test "list_companies/0 returns all companies" do
      company = company_fixture()
      assert Organizations.list_companies() == [company]
    end

    test "get_company!/1 returns the company with given id" do
      company = company_fixture()
      assert Organizations.get_company!(company.id) == company
    end

    test "create_company/1 with valid data creates a company" do
      valid_attrs = %{name: "some name", registration_number: "some registration_number"}

      assert {:ok, %Company{} = company} = Organizations.create_company(valid_attrs)
      assert company.name == "some name"
      assert company.registration_number == "some registration_number"
    end

    test "create_company/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Organizations.create_company(@invalid_attrs)
    end

    test "update_company/2 with valid data updates the company" do
      company = company_fixture()

      update_attrs = %{
        name: "some updated name",
        registration_number: "some updated registration_number"
      }

      assert {:ok, %Company{} = company} = Organizations.update_company(company, update_attrs)
      assert company.name == "some updated name"
      assert company.registration_number == "some updated registration_number"
    end

    test "update_company/2 with invalid data returns error changeset" do
      company = company_fixture()
      assert {:error, %Ecto.Changeset{}} = Organizations.update_company(company, @invalid_attrs)
      assert company == Organizations.get_company!(company.id)
    end

    test "delete_company/1 deletes the company" do
      company = company_fixture()
      assert {:ok, %Company{}} = Organizations.delete_company(company)
      assert_raise Ecto.NoResultsError, fn -> Organizations.get_company!(company.id) end
    end

    test "change_company/1 returns a company changeset" do
      company = company_fixture()
      assert %Ecto.Changeset{} = Organizations.change_company(company)
    end
  end

  describe "departments" do
    alias Timeclock.Organizations.Department

    import Timeclock.OrganizationsFixtures

    @invalid_attrs %{name: nil}

    test "list_departments/0 returns all departments" do
      department = department_fixture()
      assert Organizations.list_departments() == [department]
    end

    test "get_department!/1 returns the department with given id" do
      department = department_fixture()
      assert Organizations.get_department!(department.id) == department
    end

    test "create_department/1 with valid data creates a department" do
      valid_attrs = %{name: "some name"}

      assert {:ok, %Department{} = department} = Organizations.create_department(valid_attrs)
      assert department.name == "some name"
    end

    test "create_department/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Organizations.create_department(@invalid_attrs)
    end

    test "update_department/2 with valid data updates the department" do
      department = department_fixture()
      update_attrs = %{name: "some updated name"}

      assert {:ok, %Department{} = department} =
               Organizations.update_department(department, update_attrs)

      assert department.name == "some updated name"
    end

    test "update_department/2 with invalid data returns error changeset" do
      department = department_fixture()

      assert {:error, %Ecto.Changeset{}} =
               Organizations.update_department(department, @invalid_attrs)

      assert department == Organizations.get_department!(department.id)
    end

    test "delete_department/1 deletes the department" do
      department = department_fixture()
      assert {:ok, %Department{}} = Organizations.delete_department(department)
      assert_raise Ecto.NoResultsError, fn -> Organizations.get_department!(department.id) end
    end

    test "change_department/1 returns a department changeset" do
      department = department_fixture()
      assert %Ecto.Changeset{} = Organizations.change_department(department)
    end
  end

  describe "organizations" do
    alias Timeclock.Organizations.Organization

    import Timeclock.OrganizationsFixtures

    @invalid_attrs %{name: nil}

    test "list_organizations/0 returns all organizations" do
      organization = organization_fixture()
      assert Organizations.list_organizations() == [organization]
    end

    test "get_organization!/1 returns the organization with given id" do
      organization = organization_fixture()
      assert Organizations.get_organization!(organization.id) == organization
    end

    test "create_organization/1 with valid data creates a organization" do
      valid_attrs = %{name: "some name"}

      assert {:ok, %Organization{} = organization} =
               Organizations.create_organization(valid_attrs)

      assert organization.name == "some name"
    end

    test "create_organization/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Organizations.create_organization(@invalid_attrs)
    end

    test "update_organization/2 with valid data updates the organization" do
      organization = organization_fixture()
      update_attrs = %{name: "some updated name"}

      assert {:ok, %Organization{} = organization} =
               Organizations.update_organization(organization, update_attrs)

      assert organization.name == "some updated name"
    end

    test "update_organization/2 with invalid data returns error changeset" do
      organization = organization_fixture()

      assert {:error, %Ecto.Changeset{}} =
               Organizations.update_organization(organization, @invalid_attrs)

      assert organization == Organizations.get_organization!(organization.id)
    end

    test "delete_organization/1 deletes the organization" do
      organization = organization_fixture()
      assert {:ok, %Organization{}} = Organizations.delete_organization(organization)
      assert_raise Ecto.NoResultsError, fn -> Organizations.get_organization!(organization.id) end
    end

    test "change_organization/1 returns a organization changeset" do
      organization = organization_fixture()
      assert %Ecto.Changeset{} = Organizations.change_organization(organization)
    end
  end

  describe "addresses" do
    alias Timeclock.Organizations.Address

    import Timeclock.OrganizationsFixtures

    @invalid_attrs %{state: nil, street: nil, city: nil, postal_code: nil, country: nil}

    test "list_addresses/0 returns all addresses" do
      address = address_fixture()
      assert Organizations.list_addresses() == [address]
    end

    test "get_address!/1 returns the address with given id" do
      address = address_fixture()
      assert Organizations.get_address!(address.id) == address
    end

    test "create_address/1 with valid data creates a address" do
      valid_attrs = %{
        state: "some state",
        street: "some street",
        city: "some city",
        postal_code: "some postal_code",
        country: "some country"
      }

      assert {:ok, %Address{} = address} = Organizations.create_address(valid_attrs)
      assert address.state == "some state"
      assert address.street == "some street"
      assert address.city == "some city"
      assert address.postal_code == "some postal_code"
      assert address.country == "some country"
    end

    test "create_address/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Organizations.create_address(@invalid_attrs)
    end

    test "update_address/2 with valid data updates the address" do
      address = address_fixture()

      update_attrs = %{
        state: "some updated state",
        street: "some updated street",
        city: "some updated city",
        postal_code: "some updated postal_code",
        country: "some updated country"
      }

      assert {:ok, %Address{} = address} = Organizations.update_address(address, update_attrs)
      assert address.state == "some updated state"
      assert address.street == "some updated street"
      assert address.city == "some updated city"
      assert address.postal_code == "some updated postal_code"
      assert address.country == "some updated country"
    end

    test "update_address/2 with invalid data returns error changeset" do
      address = address_fixture()
      assert {:error, %Ecto.Changeset{}} = Organizations.update_address(address, @invalid_attrs)
      assert address == Organizations.get_address!(address.id)
    end

    test "delete_address/1 deletes the address" do
      address = address_fixture()
      assert {:ok, %Address{}} = Organizations.delete_address(address)
      assert_raise Ecto.NoResultsError, fn -> Organizations.get_address!(address.id) end
    end

    test "change_address/1 returns a address changeset" do
      address = address_fixture()
      assert %Ecto.Changeset{} = Organizations.change_address(address)
    end
  end
end
