import { Controller } from "@hotwired/stimulus"
import { createConsumer } from "@rails/actioncable"

export default class extends Controller {
  static values = { userId: Number }
  static targets = ["qrnotification"]

  connect() {
    this.channel = createConsumer().subscriptions.create(
      { channel: "UserChannel", id: this.userIdValue },
      { received: (data) => {
        console.log(data)
        this.qrnotificationTarget.insertAdjacentHTML("beforeend", data);
      }}
    )
    console.log(this.qrnotificationTarget)
  }

}
