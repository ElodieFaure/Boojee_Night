import { Controller } from "@hotwired/stimulus"
import { createConsumer } from "@rails/actioncable"

export default class extends Controller {
  static values = { userId: Number }
  static targets = ["notification"]

  connect() {
    this.channel = createConsumer().subscriptions.create(
      { channel: "UserChannel", id: this.userIdValue },
      { received: (data) => {
        console.log(data)
        const openedModal = document.getElementsByClassName("modal show")[0].querySelector(".js-notificaction-qr")
        console.log(openedModal)
        console.log(document.getElementsByClassName("modal show")[0].querySelector(".js-notificaction-qr"))
        openedModal.innerHTML=data;
      }}
    )
    console.log(this.notificationTarget)
  }
}
