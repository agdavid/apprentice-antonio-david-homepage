
function initMap() {
  
  //create GoogleMap instance and central point
  var atlanta = {lat: 33.76265200, lng: -84.423142};
  
  var map = new google.maps.Map(document.getElementById('map'), {
    zoom: 9,
    center: atlanta
  });

  // JS model object
  function Coordinate(id, lat, lng) {
    this.id = id
    this.lat = lat
    this.lng = lng
  };

  //JS method on the prototype
  Coordinate.prototype.create_marker = function() {
    var latLng = new google.maps.LatLng(this.lat, this.lng);
    var marker = new google.maps.Marker({
      position: latLng,
      map: map
    })
  };

  //callback to iterate over get AJAX response to create instances of JS model object
  function createCoordinates(data) {
    for(var i = 0; i < data.length; i++) {
      var id = data[i].id;
      var lat = parseFloat(data[i].lat);
      var lng = parseFloat(data[i].lng);
      
      var coordinate = new Coordinate(id, lat, lng);
      coordinate.create_marker()
    }
  };

  // get AJAX to Rails API backend coordinates#index
  $.get("/coordinates.json", createCoordinates);

};
