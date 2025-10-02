defmodule Timeclock.AccountsTest do
  use Timeclock.DataCase

  alias Timeclock.Accounts

  describe "users" do
    alias Timeclock.Accounts.User

    import Timeclock.AccountsFixtures

    @invalid_attrs %{first_name: nil, last_name: nil, email: nil, password_hash: nil}

    test "list_users/0 returns all users" do
      user = user_fixture()
      assert Accounts.list_users() == [user]
    end

    test "get_user!/1 returns the user with given id" do
      user = user_fixture()
      assert Accounts.get_user!(user.id) == user
    end

    test "create_user/1 with valid data creates a user" do
      valid_attrs = %{
        first_name: "some first_name",
        last_name: "some last_name",
        email: "some email",
        password_hash: "some password_hash"
      }

      assert {:ok, %User{} = user} = Accounts.create_user(valid_attrs)
      assert user.first_name == "some first_name"
      assert user.last_name == "some last_name"
      assert user.email == "some email"
      assert user.password_hash == "some password_hash"
    end

    test "create_user/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Accounts.create_user(@invalid_attrs)
    end

    test "update_user/2 with valid data updates the user" do
      user = user_fixture()

      update_attrs = %{
        first_name: "some updated first_name",
        last_name: "some updated last_name",
        email: "some updated email",
        password_hash: "some updated password_hash"
      }

      assert {:ok, %User{} = user} = Accounts.update_user(user, update_attrs)
      assert user.first_name == "some updated first_name"
      assert user.last_name == "some updated last_name"
      assert user.email == "some updated email"
      assert user.password_hash == "some updated password_hash"
    end

    test "update_user/2 with invalid data returns error changeset" do
      user = user_fixture()
      assert {:error, %Ecto.Changeset{}} = Accounts.update_user(user, @invalid_attrs)
      assert user == Accounts.get_user!(user.id)
    end

    test "delete_user/1 deletes the user" do
      user = user_fixture()
      assert {:ok, %User{}} = Accounts.delete_user(user)
      assert_raise Ecto.NoResultsError, fn -> Accounts.get_user!(user.id) end
    end

    test "change_user/1 returns a user changeset" do
      user = user_fixture()
      assert %Ecto.Changeset{} = Accounts.change_user(user)
    end
  end

  describe "roles" do
    alias Timeclock.Accounts.Role

    import Timeclock.AccountsFixtures

    @invalid_attrs %{name: nil, permissions: nil}

    test "list_roles/0 returns all roles" do
      role = role_fixture()
      assert Accounts.list_roles() == [role]
    end

    test "get_role!/1 returns the role with given id" do
      role = role_fixture()
      assert Accounts.get_role!(role.id) == role
    end

    test "create_role/1 with valid data creates a role" do
      valid_attrs = %{name: "some name", permissions: ["option1", "option2"]}

      assert {:ok, %Role{} = role} = Accounts.create_role(valid_attrs)
      assert role.name == "some name"
      assert role.permissions == ["option1", "option2"]
    end

    test "create_role/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Accounts.create_role(@invalid_attrs)
    end

    test "update_role/2 with valid data updates the role" do
      role = role_fixture()
      update_attrs = %{name: "some updated name", permissions: ["option1"]}

      assert {:ok, %Role{} = role} = Accounts.update_role(role, update_attrs)
      assert role.name == "some updated name"
      assert role.permissions == ["option1"]
    end

    test "update_role/2 with invalid data returns error changeset" do
      role = role_fixture()
      assert {:error, %Ecto.Changeset{}} = Accounts.update_role(role, @invalid_attrs)
      assert role == Accounts.get_role!(role.id)
    end

    test "delete_role/1 deletes the role" do
      role = role_fixture()
      assert {:ok, %Role{}} = Accounts.delete_role(role)
      assert_raise Ecto.NoResultsError, fn -> Accounts.get_role!(role.id) end
    end

    test "change_role/1 returns a role changeset" do
      role = role_fixture()
      assert %Ecto.Changeset{} = Accounts.change_role(role)
    end
  end

  describe "managers" do
    alias Timeclock.Accounts.Manager

    import Timeclock.AccountsFixtures

    @invalid_attrs %{}

    test "list_managers/0 returns all managers" do
      manager = manager_fixture()
      assert Accounts.list_managers() == [manager]
    end

    test "get_manager!/1 returns the manager with given id" do
      manager = manager_fixture()
      assert Accounts.get_manager!(manager.id) == manager
    end

    test "create_manager/1 with valid data creates a manager" do
      valid_attrs = %{}

      assert {:ok, %Manager{} = manager} = Accounts.create_manager(valid_attrs)
    end

    test "create_manager/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Accounts.create_manager(@invalid_attrs)
    end

    test "update_manager/2 with valid data updates the manager" do
      manager = manager_fixture()
      update_attrs = %{}

      assert {:ok, %Manager{} = manager} = Accounts.update_manager(manager, update_attrs)
    end

    test "update_manager/2 with invalid data returns error changeset" do
      manager = manager_fixture()
      assert {:error, %Ecto.Changeset{}} = Accounts.update_manager(manager, @invalid_attrs)
      assert manager == Accounts.get_manager!(manager.id)
    end

    test "delete_manager/1 deletes the manager" do
      manager = manager_fixture()
      assert {:ok, %Manager{}} = Accounts.delete_manager(manager)
      assert_raise Ecto.NoResultsError, fn -> Accounts.get_manager!(manager.id) end
    end

    test "change_manager/1 returns a manager changeset" do
      manager = manager_fixture()
      assert %Ecto.Changeset{} = Accounts.change_manager(manager)
    end
  end

  describe "employees" do
    alias Timeclock.Accounts.Employee

    import Timeclock.AccountsFixtures

    @invalid_attrs %{position: nil, hired_at: nil}

    test "list_employees/0 returns all employees" do
      employee = employee_fixture()
      assert Accounts.list_employees() == [employee]
    end

    test "get_employee!/1 returns the employee with given id" do
      employee = employee_fixture()
      assert Accounts.get_employee!(employee.id) == employee
    end

    test "create_employee/1 with valid data creates a employee" do
      valid_attrs = %{position: "some position", hired_at: ~U[2025-10-05 10:49:00Z]}

      assert {:ok, %Employee{} = employee} = Accounts.create_employee(valid_attrs)
      assert employee.position == "some position"
      assert employee.hired_at == ~U[2025-10-05 10:49:00Z]
    end

    test "create_employee/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Accounts.create_employee(@invalid_attrs)
    end

    test "update_employee/2 with valid data updates the employee" do
      employee = employee_fixture()
      update_attrs = %{position: "some updated position", hired_at: ~U[2025-10-06 10:49:00Z]}

      assert {:ok, %Employee{} = employee} = Accounts.update_employee(employee, update_attrs)
      assert employee.position == "some updated position"
      assert employee.hired_at == ~U[2025-10-06 10:49:00Z]
    end

    test "update_employee/2 with invalid data returns error changeset" do
      employee = employee_fixture()
      assert {:error, %Ecto.Changeset{}} = Accounts.update_employee(employee, @invalid_attrs)
      assert employee == Accounts.get_employee!(employee.id)
    end

    test "delete_employee/1 deletes the employee" do
      employee = employee_fixture()
      assert {:ok, %Employee{}} = Accounts.delete_employee(employee)
      assert_raise Ecto.NoResultsError, fn -> Accounts.get_employee!(employee.id) end
    end

    test "change_employee/1 returns a employee changeset" do
      employee = employee_fixture()
      assert %Ecto.Changeset{} = Accounts.change_employee(employee)
    end
  end
end
