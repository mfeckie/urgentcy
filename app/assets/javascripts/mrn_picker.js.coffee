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

  $("#new_patient_form").submit ->
    $.ajax(
      type: 'POST'
      url: $(this).attr('action')
      data: $(this).serialize()
      success: (data) ->
        console.log data
        console.log data.mrn
        $("#status").text('Saved')
        $("#mrn").val(data.mrn)
        $("#close_modal").click()
      dataType: 'json'

    )
    false
