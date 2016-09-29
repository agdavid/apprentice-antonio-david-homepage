
function initMap() {
  var atlanta = {lat: 33.76265200, lng: -84.423142};
  
  var map = new google.maps.Map(document.getElementById('map'), {
    zoom: 8,
    center: atlanta
  });

  function Coordinate(id, lat, lng) {
    this.id = id
    this.lat = lat
    this.lng = lng
  };

  Coordinate.prototype.create_marker = function() {
    var latLng = new google.maps.LatLng(this.lat, this.lng);
    var marker = new google.maps.Marker({
      position: latLng,
      map: map
    })
  };

  function createCoordinates(data) {
    for(var i = 0; i < data.length; i++) {
      var coordinate = new Coordinate(data[i].id, parseFloat(data[i].lat), parseFloat(data[i].lng));
      coordinate.create_marker()
    }
  };

  $.get("/coordinates.json", createCoordinates);

}
