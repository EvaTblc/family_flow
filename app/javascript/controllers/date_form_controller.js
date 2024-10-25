import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="date-form"
export default class extends Controller {
  static targets = ["form", "start", "end"]

  connect() {
    this.startTarget.value = this.element.dataset.today;
  }
}
