import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="disable-button"
export default class extends Controller {
  static targets = ["register", "link"]

  connect() {
    console.log("Hello world")
    // console.log(this.registerTarget)
  }

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
