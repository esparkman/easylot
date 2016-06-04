jQuery ->
  $("#query").autocomplete(
    source: "/vehicles/autocomplete",
    minLength: 2
  )
