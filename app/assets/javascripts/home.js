// $(document).ready(function() {
//   $('.well').on('mouseenter', function() {
//     $('.features').slideDown();
//   });
// });

var isMobile = /Android|webOS|iPhone|iPad|iPod|BlackBerry/i.test(navigator.userAgent) ? true : false;

$(window).scroll(function() {
  var height = $(window).scrollTop();

  if (height < 750) {
    $('.myflix-description').slideUp();
    $('.postit-description').slideUp();
    $('.blackjack-description').slideUp();
  }
});

$(document).ready(function() {
  if (!isMobile) {
    $('.myflixImage').on('mouseenter', this, function() {
      $('.myflix-description').slideDown();
    });

    $('.postitImage').on('mouseenter', this, function() {
      $('.postit-description').slideDown();
    });

    $('.blackjackImage').on('mouseenter', this, function() {
      $('.blackjack-description').slideDown();
    });
  }
});
