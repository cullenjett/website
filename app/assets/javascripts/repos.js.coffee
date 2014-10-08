$ ->
  $('#repos').imagesLoaded ->
    $('#repos').masonry
      itemSelector: '.box'
      isFitWidth: true

    $('.box').hover (->
      $(this).stop().animate
        marginTop: '-3px',
        150
    ), ->
      $(this).stop().animate
        marginTop: '3px',
        100
