$ ->
  $(".date-picker").datepicker(
    yearRange: "-120:+0"
    changeYear: true
    changeMonth: true
    altField: "#patient_date_of_birth"
    altFormat: "dd-mm-yy"
  )