$(function() {
console.log("insidefile")
//contact us modal

  $('#contact-link').on('click', function(eventobject) {
    eventobject.preventDefault()
    $('.modal').fadeIn('slow')
  });

  $('.close').on('click', function() {

    $('.modal').fadeOut('slow')

  });

// sign in sign up modal
  $('#signin-link').on('click', function(eventobject) {
    eventobject.preventDefault()
    $('.signinsignup').fadeIn('slow')
  });

  $('.close').on('click', function() {

    $('.signinsignup').fadeOut('slow')

  });


  // $('a').hover(function(){
  //      $(this).css({"color":"red"}); , function() {
  //   $( this ).css({ "color":"white" });
  // }
  // });

  $( "a, .dropbtn" ).hover(
  function() {
      $(this).css({"color":"black"});
  }, function() {
      $(this).css({"color":"white"});
  }
);





});
