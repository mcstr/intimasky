import flatpicker from 'flatpickr'
import 'flatpickr/dist/themes/dark.css'
import rangePlugin from "flatpickr/dist/plugins/rangePlugin"

flatpickr("#start", {
  altInput: true,
  "plugins": [new rangePlugin({ input: "#end"})]
});
