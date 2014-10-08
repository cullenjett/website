$ ->
  $('#repos').imagesLoaded ->
    $('#repos').masonry
      itemSelector: '.box'
      isFitWidth: true

    $('.box').hover (->
      $(this).stop().animate
        marginTop: '0px',
        100, ->
          $(this).animate
            marginTop: '2px',
            150
    ), ->
      $(this).stop().animate
        marginTop: '12px',
        150, ->
          $(this).animate
            marginTop: '10px'
            200

  $root = $("html, body")

  $('a').click ->
    $root.animate
      scrollTop: $($.attr(this, "href")).offset().top
    , 500
    false
