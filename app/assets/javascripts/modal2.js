$(document).on('turbolinks:load', function(){

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
      $(this).css({"color":"grey"});
  }, function() {
      $(this).css({"color":"black"});
  }
);

// change hearts

// $('.full_heart').on('click', function() {
//   console.log('you clicked')
//   $(this).removeClass('full_heart');
//   $(this).addClass('empty_heart');
// console.log('you added empty heart class')
// });




$('.full_heart').on('click', function() {

    console.log("you clicked")
    $(this).removeClass('full_heart');
    $(this).addClass('empty_heart');
    var to_delete = $(this).attr('data-to-delete')
    var string = 'id=' ;
    $.ajax({
     type: "DELETE",
     url: "/favourites/" + to_delete,
     data: {id: to_delete},
     dataType: "json", });
    console.log("empty")

});


$('.empty_heart').on('click', function() {
  console.log('you clicked')


          user = $(this).attr('data-user')
                bus = $(this).attr('data-bus')
                $(this).removeClass('empty_heart');
                $(this).addClass('full_heart');
                 console.log("full")

                $.ajax({
                 url: '/favourites',
                 method: 'post',
                 data: {user_id: user, business_id: bus }
                       });

});





var acc = document.getElementsByClassName("accordion");
var i;

for (i = 0; i < acc.length; i++) {
    acc[i].onclick = function(){
        this.classList.toggle("active");
        this.nextElementSibling.classList.toggle("show");
    }
}






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
