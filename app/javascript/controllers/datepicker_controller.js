import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr";

// Connects to data-controller="datepicker"
export default class extends Controller {
  connect() {
    const tomorrow = new Date();
    tomorrow.setDate(tomorrow.getDate() + 1);

    flatpickr(this.element, {
      enableTime: true,
      dateFormat: 'Y-m-d H:i',
      autoclose: true,
      todayHighlight: true,
      minDate: tomorrow,
    });
  }
}
