import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="scroll"
export default class extends Controller {
  static targets = ["messages"];

  connect() {
    console.log(this.messagesTarget);

    this.scrollToBottom();
  }

  scrollToBottom() {
    if (this.messagesTarget) {
      this.messagesTarget.scrollTop = this.messagesTarget.scrollHeight;
    }
  }

  update() {
    this.scrollToBottom();
  }
}
