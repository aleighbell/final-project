
console.log("infile")

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

});
