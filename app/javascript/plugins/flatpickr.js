import flatpickr from "flatpickr"
import "flatpickr/dist/themes/material_blue.css"// Note this is important!

flatpickr(".datepicker", {
  altFormat: "F j, Y",
  dateFormat: "m-d-Y"
})
