import { Application } from "@hotwired/stimulus"

const application = Application.start()

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

export { application }

document.addEventListener("turbo:stream-connected", (event) => {
  console.log("Turbo Stream connecté au canal :", event.target.dataset.channel);
});
