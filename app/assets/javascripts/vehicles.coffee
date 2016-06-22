jQuery ->
  $("#query").autocomplete(
    source: "/vehicles/autocomplete",
    minLength: 2
  )

  $('#vehicleCarousel').carousel interval: 5000
  #Handles the carousel thumbnails
  $('[id^=carousel-selector-]').click ->
    `var id`
    id_selector = $(this).attr('id')
    id = id_selector.substr(id_selector.length - 1)
    id = parseInt(id)
    $('#vehicleCarousel').carousel id
    return
  return

