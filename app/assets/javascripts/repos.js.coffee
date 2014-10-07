$ ->
  $('#repos').imagesLoaded ->
    $('#repos').masonry
      itemSelector: '.box'
      isFitWidth: true
