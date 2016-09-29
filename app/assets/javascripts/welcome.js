
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

  Coordinate.prototype.create_marker = function() {
    debugger;
  };

  function createCoordinates(data) {
    for(var i = 0; i < data.length; i++) {
      var coordinate = new Coordinate(data[i].id, parseFloat(data[i].lat), parseFloat(data[i].lng));
      debugger;
    }
  };

  $.get("/coordinates.json", createCoordinates);

}
