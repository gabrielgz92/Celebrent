import flatpickr from 'flatpickr';
import "flatpickr/dist/flatpickr.min.css";

const initDatepicker = () => {
  console.log("hello from the datepicker...");

  const inputs = document.querySelectorAll(".datepicker");

  if (inputs) {
    inputs.forEach(input => flatpickr(input));
  }
}

export { initDatepicker };
