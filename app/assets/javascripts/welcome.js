
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

  function Coordinate(id, lat, lng) {
    this.id = id
    this.lat = lat
    this.lng = lng
  };

  $.get("/coordinates.json", function(data) {
    var coordinate = new Coordinate(data.id, data.lat, data.lng)
  });

}
