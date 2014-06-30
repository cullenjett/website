// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .
//= require bootstrap


// $(document).ready(function() {
//   $('#resume').on('mouseover', function() {
//     $(this).animate({"width": "110%", "right": "100px"}, 200, "swing");
//   }).mouseout(function() {
//     $(this).animate({"width": "100%", "left": "10px"}, 200, "swing");
//   });;
// });

$(function(){
    $('.navbar').data('size','big');
});

$(window).scroll(function(){
    var $nav = $('.navbar');
    if ($('body').scrollTop() > 0) {
        if ($nav.data('size') == 'big') {
            $nav.data('size','small').stop().animate({
                height:'40px'
            }, 600);
        }
    } else {
        if ($nav.data('size') == 'small') {
            $nav.data('size','big').stop().animate({
                height:'80px'
            }, 600);
        }  
    }
});