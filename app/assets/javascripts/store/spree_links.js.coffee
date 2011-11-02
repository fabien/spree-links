$ ->
  $('.link').hide()
  $('.link').click ->
    id = $(this).attr('id').split('_')[1]
    $('#link_' + id).slideToggle()
