defmodule Timeclock.Scope do
  @moduledoc """
  Defines the scope of the caller to be used throughout the app.
  """

  alias Timeclock.Accounts.User
  alias Timeclock.Accounts.Role
  alias Timeclock.Tenant

  @type t() :: %__MODULE__{
          user: Map.t() | nil,
          tenant: Map.t() | nil,
          role: Map.t() | nil
        }

  defstruct user: nil, tenant: nil, role: nil

  def new(%User{} = user, role) when is_atom(role) do
    %__MODULE__{
      user: user,
      tenant: nil,
      role: role
    }
  end

  @doc """
  Creates a scope for the given user.

  Returns nil if no user is given.
  """
  @spec for_user(User.t()) :: t()
  def for_user(%User{} = user), do: %__MODULE__{user: user}
  def for_user(nil), do: nil

  @doc """
  Creates a scope for the given tenant.

  Returns nil if no tenant is given.
  """
  @spec put_tenant(t(), String.t()) :: t()
  def put_tenant(%__MODULE__{} = scope, data), do: %__MODULE__{scope | tenant: data}

  @spec for_tenant(String.t()) :: t()
  def for_tenant(data), do: %__MODULE__{tenant: data}
  def for_tenant(nil), do: nil

  @doc """
  Creates a scope for the given role.

  Returns nil if no role is given.
  """
  @spec put_role(t(), Role.t()) :: t()
  def put_role(%__MODULE__{} = scope, role), do: %__MODULE__{scope | role: role}

  @spec for_role(Role.t()) :: t()
  def for_role(%Role{} = data), do: %__MODULE__{role: data}
  def for_role(nil), do: nil
end
