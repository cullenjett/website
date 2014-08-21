// $(document).ready(function() {
//   $('.well').on('mouseenter', function() {
//     $('.features').slideDown();
//   });
// });


$(window).scroll(function() {
  var height = $(window).scrollTop();

  if (height > 1225) {
    $('.features').slideDown(750);
  }
  else if (height < 1225) {
    $('.features').slideUp();
  }
})
