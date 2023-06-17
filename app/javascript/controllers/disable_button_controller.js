import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="disable-button"
export default class extends Controller {
  connect() {
    console.log("Hello world")
  }

  static targets = ["register", "link"]

  disable() {
    this.registerTarget.innerText = "Registered!"
    this.registerTarget.setAttribute("disabled", "")
    this.linkTarget.setAttribute("disabled", "")
    this.linkTarget.classList.remove("d-none")

    // fetch(this.registerTarget.action, {
    //   method: "POST",
    //   headers: { "Accept": "application/json" },
    //   body: new
    // })
  }
}
