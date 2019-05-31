import flatpickr from 'flatpickr';
import "flatpickr/dist/flatpickr.min.css";

const initDatepicker = () => {

  const inputs = document.querySelectorAll(".datepicker");
  var day = new Date();
  var date =  day.getDate();
  var month = day.getMonth();
  var year = day.getFullYear();
  var today = year.toString()+'-'+month.toString()+'-'+date.toString();
  console.log(today);
  if (inputs) {
    inputs.forEach(input => flatpickr(input, { minDate: today }));
  }
}

export { initDatepicker };
