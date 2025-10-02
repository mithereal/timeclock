defmodule Timeclock.Tenant do
  use Ecto.Schema

  import Ecto.Changeset

  alias Framework.Repo

  schema "tenants" do
    field(:name, :string)
    field(:hosts, {:array, :string})
    timestamps()
  end

  @doc false
  def changeset(%__MODULE__{} = tenant, attrs \\ %{}) do
    cast(tenant, attrs, all_fields())
  end

  defp all_fields do
    __MODULE__.__schema__(:fields)
  end
end
