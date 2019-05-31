import flatpickr from 'flatpickr';
import "flatpickr/dist/flatpickr.min.css";

const initDatepicker = () => {
  console.log("hello from the datepicker...");

  const input = document.getElementById("booking_booking_date");

  if (input) {
    flatpickr(input);
  }
}

export { initDatepicker };
