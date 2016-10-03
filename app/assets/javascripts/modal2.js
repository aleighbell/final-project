
$( document ).ready(function() {
    console.log( "ready!" );




// $(document).on(function(){
console.log("testing")
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

//submit button

$('.submit').on('click', function(eventobject) { //SUBMIT BUTTON
  eventobject.preventDefault();

  $.ajax({
    url: '/contact-us',
    data: {
      firstname: $('#first').val(), // FORM INPUTS
      lastname: $('#last').val(),
      email: $('#email').val(),
      businessname: $('#bname').val(),
      businessaddress: $('#baddress').val(),
      message: $('#message').val(),
    },
    method: 'POST',
    dataType: 'json'
  }).done(function(data){
    alert('Form Submitted');
  });
})

$('.submit').on('click', function(eventobject) {
  $('.modal').fadeOut('slow')
})

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

// change hearts

// $('.full_heart').on('click', function() {
//   console.log('you clicked')
//   $(this).removeClass('full_heart');
//   $(this).addClass('empty_heart');
// console.log('you added empty heart class')
// });



$('.empty_heart').on('click', function() {
  console.log('you clicked')

  if($(this).hasClass('empty_heart'))
            {
                $(this).removeClass('empty_heart');
                $(this).addClass('full_heart');

                $.ajax({
                         url: '/favourites',
                         method: 'post',
                         data: {user_id: 'user_id', business_id: $(this).data('business-id') },
                       });
            }

            else
            {
                $(this).addClass('empty_heart');
                $(this).removeClass('full_heart');

            }
console.log('you added full heart class')
});








          // if($(this).hasClass('empty_heart'))
          //   {
          //       $(this).removeClass('full_heart');
          //   }
          //   else
          //   {
          //       $(this).addClass('empty_heart');
          //   }
          //





});
