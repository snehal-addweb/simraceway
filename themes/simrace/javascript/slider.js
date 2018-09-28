$(document).ready(function() {
  var owl = $('.owl-carousel');
  owl.owlCarousel({
    loop: true,
    margin: 5,
    navRewind: false,
    responsive: {
      0: {
        items: 1
      },
      600: {
        items: 3
      },
      1000: {
        items: 5 
      }
    }
  })

alert("jgj");
  $('.image-wrap').owlCarousel({
    loop: true,
    margin: 5,
    navRewind: false,
    responsive: {
      0: {
        items: 1
      }
    }
  });

})


