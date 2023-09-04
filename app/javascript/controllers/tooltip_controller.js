import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="tooltip"
export default class extends Controller {
  static targets = ["card"]

  connect() {
    console.log("coucou")
  }

  fire(){
    this.cardTarget.classList.remove("d-none")
  }

  unfire(){
    this.cardTarget.classList.add("d-none")
  }
}
