$ ->
  $('#repos').imagesLoaded ->
    $('#repos').masonry
      itemSelector: '.box'
      isFitWidth: true

    $('.box').hover (->
      $(this).stop().animate
        marginTop: '0px',
        150
    ), ->
      $(this).animate
        marginTop: '10px',
        100
