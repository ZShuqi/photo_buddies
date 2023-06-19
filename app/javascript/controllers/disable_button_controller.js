import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="disable-button"
export default class extends Controller {
  static targets = ["items", "form", "register", "link"]

  connect() {
    console.log("Hello world")
    this.csrfToken = document.querySelector('meta[name="csrf-token"]').getAttribute('content')
    // console.log(this.registerTarget)
  }

  send(event) {
    event.preventDefault()

    fetch(this.formTarget.action, {
      method: "POST",
      headers: { "Accept": "application/json" , "X-CSRF-Token": this.csrfToken }
    })
      .then(response => response.json())
      .then((data) => {
        console.log(data)
        this.itemsTarget.insertAdjacentHTML(this.positionValue, data.inserted_item)
      })

      this.formTarget.innerText = "Registered!"
      this.formTarget.setAttribute("disabled", "")
      this.formTarget.classList.add("disabled-btn")
      this.linkTarget.classList.remove("d-none")
  }
}
