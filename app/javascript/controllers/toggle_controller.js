import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="toggle"
export default class extends Controller {
  static targets = ["button", "div"]
  connect() {
    console.log(this.buttonTarget);
    console.log(this.divTarget);
  }

  toggle() {
    this.divTarget.classList.toggle("d-none");
  }
}
