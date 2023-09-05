import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr";


export default class extends Controller {
  static targets = [ "startTime", "endTime", "startHour", "endHour" ]

  connect() {
    if (this.hasStartTimeTarget) {
      flatpickr(this.startTimeTarget, {
        minDate: "today",
        dateFormat: "d.m.Y",
      })
    }

    if (this.hasEndTimeTarget) {
      flatpickr(this.endTimeTarget, {
        minDate: "today",
        dateFormat: "d.m.Y",
      })
    }

    if (this.hasStartHourTarget) {
      flatpickr(this.startHourTarget, {
        enableTime: true,
        noCalendar: true,
        dateFormat: "H:i",
        time_24hr: true
      })
    }

    if (this.hasEndHourTarget) {
      flatpickr(this.endHourTarget, {
        enableTime: true,
        noCalendar: true,
        dateFormat: "H:i",
        time_24hr: true
      })
    }
  }
}
