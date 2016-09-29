
function initMap() {
  var atlanta = {lat: 33.76265200, lng: -84.423142};
  
  var map = new google.maps.Map(document.getElementById('map'), {
    zoom: 12,
    center: atlanta
  });
  
  var marker = new google.maps.Marker({
    position: atlanta,
    map: map
  });

  $.get("/coordinates.json", function(data) {
    debugger;
  })

}
