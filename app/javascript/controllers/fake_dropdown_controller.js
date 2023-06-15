import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="fake-dropdown"
export default class extends Controller {
  static targets = ["closed", "open", "card"]

  connect() {
    console.log("Hello from fake dropdown Stimulus controller")
  }

  disable() {
  // this.buttonTarget.innerText = <i class="fa-solid fa-chevron-down"></i>
  // this.buttonTarget.setAttribute("disabled", "")
  this.closedTarget.classList.add("d-none")
  this.openTarget.classList.remove("d-none")
  this.cardTarget.classList.remove("d-none")
  }

  reset() {
    // this.buttonTarget.innerText = "Click me!"
    // this.buttonTarget.removeAttribute("disabled")
    this.closedTarget.classList.remove("d-none")
    this.openTarget.classList.add("d-none")
    this.cardTarget.classList.add("d-none")
  }
}
