import { Controller } from "@hotwired/stimulus"
import Typed from "typed.js";

// Connects to data-controller="typed"
export default class extends Controller {
  static values = {
    address: String,
    temp: String,
    icon: String,
  }

  static targets = ["iconMeteo"]

  connect() {
    this.iconMeteoTarget.innerHTML = `<img src="${this.iconValue}" alt=""></img>`

    function formatDate(date = new Date()) {
      const jour = String(date.getDate()).padStart(2, '0');
      const mois = String(date.getMonth() + 1).padStart(2, '0');
      const annee = date.getFullYear();

      return `${jour}/${mois}/${annee}`;
    }
    const dateNow = formatDate(new Date(Date.now()));

    const typed = new Typed('.element', {
      strings: [`Aujourd'hui nous sommes le ${dateNow}`,  `A ${this.addressValue} il fait ${this.tempValue}°C`],
      typeSpeed: 30,
      backSpeed: 20,
      loop: true,
      showCursor: false,
    });

  }
}
