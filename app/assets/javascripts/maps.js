$(function () {
 $('#find-nearbys').on('click', function (){

   if ("geolocation" in navigator) {
     navigator.geolocation.getCurrentPosition(itWorked, ifFailed);
   } else {
     alert ("Geolocation not supported, we are sorry!");
   }

  })
})

function itWorked(position){
  var lat = position.coords.latitude;
  var lon = position.coords.longtitude;

  $.ajax({
    url: '/businesses',
    method: 'get',
    dataType: 'html',
    data: {latitude: lat, longtitude: lon}
  }).done (function(responseData));
}

function itFailed(error){
  console.log("Something went wrong:" + error.message);

}
<script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDMws3MCWPxXDBNzJkzuLjWLEpt3-xl0uo&callback=initMap">
   </script>
