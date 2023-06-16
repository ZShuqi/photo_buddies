import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="navbar-active-tab"
export default class extends Controller {
  static targets = ["home", "search", "community", "profile"]

  connect() {
    console.log("Hello from navbar_active_tab Stimulus controller")
  }

  activateHome() {
  this.homeTarget.classList.add("active")
  this.searchTarget.classList.remove("active")
  this.communityTarget.classList.remove("active")
  this.profileTarget.classList.remove("active")
  }

  activateSearch() {
    this.searchTarget.classList.add("active")
    this.homeTarget.classList.remove("active")
    this.communityTarget.classList.remove("active")
    this.profileTarget.classList.remove("active")
    }

  activateCommunity() {
    this.communityTarget.classList.add("active")
    this.searchTarget.classList.remove("active")
    this.homeTarget.classList.remove("active")
    this.profileTarget.classList.remove("active")
    }

  activateProfile() {
    this.profileTarget.classList.add("active")
    this.searchTarget.classList.remove("active")
    this.communityTarget.classList.remove("active")
    this.homeTarget.classList.remove("active")
    }
}
