import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="tooltip"
export default class extends Controller {
  connect() {
    console.log("coucou")
    new bootstrap.Tooltip(this.element)
  }
}
