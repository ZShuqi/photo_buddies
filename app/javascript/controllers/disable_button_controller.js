import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="disable-button"
export default class extends Controller {
  connect() {
    console.log("Hello world")
  }

  disable() {
    this.element.innerText = "Registered!"
    this.element.setAttribute("disabled", "")
  }
}
