import { Controller } from "@hotwired/stimulus";
import flatpickr from "flatpickr";
import "flatpickr-fr";

// Connects to data-controller="flatpickr"
export default class extends Controller {
  static targets = ["start"];

  connect() {

        // this.startTarget.value = today;

    // Initialisation de Flatpickr
    new flatpickr(this.startTarget, {
      enableTime: false,
      mode: "range",
      minDate: "today",
      dateFormat: "d-m-y",
      locale: "fr",
      defaultDate: this.formatDate(new Date()),
    });
  }

  // Fonction pour formater une date en "d-m-y"
  formatDate(date) {
    const day = String(date.getDate()).padStart(2, "0");
    const month = String(date.getMonth() + 1).padStart(2, "0");
    const year = String(date.getFullYear());
    return `${day}-${month}-${year}`;
  }
}
