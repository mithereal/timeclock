let Gantt = {}

Gantt.Draggable = {
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
  }
}

Gantt.DragDropContainer = {
  mounted() {
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

export default Gantt