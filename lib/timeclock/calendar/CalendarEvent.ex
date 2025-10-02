defmodule MyApp.Calendar.CalendarEvent do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id

  schema "calendar_events" do
    field :name, :string
    field :date, :date
    field :valid_to, :date

    field :calendar_group_id, :binary_id
    field :calendar_group_name, :string

    field :calendar_event_type_id, :binary_id
    field :calendar_event_type_code, :string
    field :calendar_event_type_name, :string

    field :recurring_mode, :string

    timestamps()
  end

  @doc false
  def changeset(calendar_event, attrs) do
    calendar_event
    |> cast(attrs, [
      :name,
      :date,
      :valid_to,
      :calendar_group_id,
      :calendar_group_name,
      :calendar_event_type_id,
      :calendar_event_type_code,
      :calendar_event_type_name,
      :recurring_mode
    ])
    |> validate_required([:name, :date])
  end
end
