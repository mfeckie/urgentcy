$ ->
  $('.mrn-picker').autocomplete(
    source: (request, response) ->
      $.ajax(
        url: '/patients_search'
        dataType: 'json'
        data: 'mrn=' + request.term,
        success: (data) ->
          response(parsePatients(data))
      )
    minLength: 4

  )

parsePatients = (data) ->
  $.map(data.patients, (patient) ->
    return {
    label: patient.last_name + ", " + patient.first_name + " Date of Birth: (" + patient.date_of_birth + ") - MRN: " + patient.mrn
    value: patient.mrn
    }
  )