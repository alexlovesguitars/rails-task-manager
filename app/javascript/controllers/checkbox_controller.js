import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  toggle() {
    const checkbox = this.element.querySelector('input[type="checkbox"]');
    console.log(checkbox.checked ? "Checkbox is checked" : "Checkbox is unchecked");
  }
}
