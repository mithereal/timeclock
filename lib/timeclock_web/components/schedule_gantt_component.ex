defmodule TimeclockWeb.ScheduleGanttComponent do
  use MyAppWeb, :live_component
  use Phoenix.HTML

  alias MyApp.Scheduling

  attr :days, :list, required: true
  attr :users, :list, required: true
  attr :schedules, :list, required: true
  attr :current_user, :string, required: true
  attr :modal_open, :boolean, default: false
  attr :modal_schedule, :map, default: %{}

  def gantt_chart(assigns) do
    ~H"""
    <div class="overflow-auto border rounded shadow">
      <div class="grid grid-cols-[200px_repeat(var(--days),1fr)] bg-gray-100 border-b">
        <div class="p-2 font-bold">Users</div>
        :for={day <- @days}
        <div class="p-2 font-bold text-center border-l">{day}</div>
      </div>

      <div :for={user <- @users} class="grid grid-cols-[200px_repeat(var(--days),1fr)] border-b">
        <div class="p-2 font-medium bg-gray-50 flex items-center gap-2">
          {if(
            Map.has_key?(user, :avatar_url) and
              user.avatar_url(
                do:
                  "<img src={user.avatar_url} alt={user.name} class='w-6 h-6 rounded-full object-cover'/>"
              )
          )}

          <span>{user.name}</span>
        </div>

        <div
          :for={day <- @days}
          class="relative border-l p-1 min-h-[3rem]"
          id={"#{user.name}-#{day}"}
          phx-hook=".schedule_drag"
          data-username={user.name}
          data-current-user={@current_user}
        >
          <.gantt_schedule />
        </div>
      </div>
    </div>

    <.live_component
      module={TimeclockWeb.ScheduleModalComponent}
      id="schedule_modal"
      schedule={@modal_schedule}
      show={@modal_open}
    />
    <script :type={Phoenix.LiveView.ColocatedHook} name=".schedule_drag">
            export default {
              mounted() {
                 this.el.addEventListener('dragstart', (e) => {
            e.dataTransfer.effectAllowed = "move"
            e.dataTransfer.setData('text/plain', JSON.stringify({
              username: this.el.dataset.username,
              label: this.el.dataset.label,
              start_day: this.el.dataset.startDay,
              end_day: this.el.dataset.endDay
            }))
            this.el.classList.add("opacity-50", "scale-105")
          })
          this.el.addEventListener('dragend', (e) => {
            this.el.classList.remove("opacity-50", "scale-105")
          })
      this.el.addEventListener('dragover', (e) => e.preventDefault())
        this.el.addEventListener('drop', (e) => {
          e.preventDefault()
          const data = JSON.parse(e.dataTransfer.getData('text/plain'))
          if (data.username !== this.el.dataset.currentUser || data.username !== this.el.dataset.username) return
          this.pushEvent("multi_day_shift_dropped", {
            username: data.username,
            label: data.label,
            start_day: data.start_day,
            end_day: data.end_day,
            to_index: Array.from(this.el.parentElement.children).indexOf(this.el)
          })
        })
              }
            }
    </script>
    """
  end

  attr :username, :string, required: true
  attr :left, :string, required: true
  attr :width, :string, required: true
  attr :item, :map, required: true

  def gantt_schedule(assigns) do
    ~H"""
    <div
      class={"absolute top-0 p-1 text-xs rounded cursor-pointer flex items-center justify-center #{@item.color} hover:scale-105 transform transition duration-200"}
      style={"left: #{@left}%; width: #{@width}%; transition-all duration-300;"}
      draggable={@username == @item.username}
      phx-click="edit_schedule"
      phx-value-username={@username}
      phx-value-label={@item.label}
      phx-value-start_day={@item.start_day}
      phx-value-end_day={@item.end_day}
      phx-value-color={@item.color}
    >
      <span>{@item.icon}</span> {@item.label}
    </div>
    """
  end

  def find_schedules_for_user(schedules, username, days) do
    case Enum.find(schedules, fn {u, _} -> u == username end) do
      nil ->
        []

      {_, user_schedules} ->
        for item <- user_schedules do
          start_index = Enum.find_index(days, &(&1 == item.start_day)) || 0
          end_index = Enum.find_index(days, &(&1 == item.end_day)) || start_index
          span = end_index - start_index + 1
          width = span / length(days) * 100
          left = start_index / length(days) * 100
          %{item: item, left: left, width: width, username: username}
        end
    end
  end
end
