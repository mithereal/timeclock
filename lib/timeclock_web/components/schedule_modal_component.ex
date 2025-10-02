defmodule TimeclockWeb.ScheduleModalComponent do
  use MyAppWeb, :live_component

  attr :schedule, :map, required: true
  attr :show, :boolean, required: true

  def render(assigns) do
    ~H"""
    <div
      :if={@show}
      class="fixed inset-0 bg-black bg-opacity-50 flex items-center justify-center z-50"
    >
      <div class="bg-white rounded-lg p-6 w-96 shadow-lg">
        <h2 class="text-lg font-bold mb-4">Edit Schedule</h2>
        <form phx-submit="save_schedule" phx-target={@myself}>
          <div class="mb-3">
            <label class="block text-sm font-medium">Start Day</label>
            <input
              type="text"
              name="start_day"
              value={@schedule.start_day}
              class="border p-2 w-full rounded"
            />
          </div>
          <div class="mb-3">
            <label class="block text-sm font-medium">End Day</label>
            <input
              type="text"
              name="end_day"
              value={@schedule.end_day}
              class="border p-2 w-full rounded"
            />
          </div>
          <div class="mb-3">
            <label class="block text-sm font-medium">Label</label>
            <input type="text" name="label" value={@schedule.label} class="border p-2 w-full rounded" />
          </div>
          <div class="mb-3">
            <label class="block text-sm font-medium">Color</label>
            <input type="color" name="color" value={@schedule.color} class="w-full h-10 rounded" />
          </div>
          <div class="flex justify-end gap-2 mt-4">
            <button
              type="button"
              phx-click="close_modal"
              phx-target={@myself}
              class="px-4 py-2 bg-gray-300 rounded"
            >
              Cancel
            </button>
            <button type="submit" class="px-4 py-2 bg-blue-500 text-white rounded">Save</button>
          </div>
        </form>
      </div>
    </div>
    """
  end

  def handle_event("close_modal", _params, socket), do: {:noreply, assign(socket, show: false)}

  def handle_event(
        "save_schedule",
        %{"start_day" => start_day, "end_day" => end_day, "label" => label, "color" => color},
        socket
      ) do
    send(
      self(),
      {:save_schedule,
       %{
         username: socket.assigns.schedule.username,
         start_day: start_day,
         end_day: end_day,
         label: label,
         color: color
       }}
    )

    {:noreply, assign(socket, show: false)}
  end
end
