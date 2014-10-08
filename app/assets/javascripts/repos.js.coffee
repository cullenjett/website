$ ->
  $('#repos').imagesLoaded ->
    $('#repos').masonry
      itemSelector: '.box'
      isFitWidth: true

    $('.box').hover (->
      $(this).stop().animate
        marginTop: '0px',
        50, ->
          $(this).animate
            marginTop: '2px',
            100
    ), ->
      $(this).animate
        marginTop: '12px',
        100, ->
          $(this).animate
            marginTop: '10px'
            150
