$ ->
  $('.mrn-picker').autocomplete(
    source: (request, response) ->
      $.ajax(
        url: '/patients_search'
        dataType: 'json'
        data: 'mrn=' +request.term,
        success: (data) ->
          response($.map(data.patients, (patient) ->
            return {
            label: patient.last_name + "," + patient.first_name + " - MRN: " + patient.mrn
            value: patient.mrn
            }
          )))
    minLength: 2

    select: (event,ui) ->
      open: ->
        $(this).addClass("unstyled")


  )