import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="toggle"
export default class extends Controller {
  static targets = ["button", "div", "name"]

  toggle() {
    this.divTarget.classList.toggle("d-none");
    this.nameTarget.classList.toggle("d-none");
  }
}
