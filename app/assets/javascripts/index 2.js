$(document).on('turbolinks:load', function(){
  $('.single').not('.slick-initialized').slick({
    autoplay:true,
    dots:true,
    autoplaySpeed:5000,
  });
});
