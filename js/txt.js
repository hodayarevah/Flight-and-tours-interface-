function myMap(x,y,k) {
    var mapProp = {
        center: new google.maps.LatLng(x,y),
        zoom: 5,
    };
    var map = new google.maps.Map(document.getElementById("googleMap" + k), mapProp);

    var marker = new google.maps.Marker({
        position: center,
    });
    marker.setMap(map);
}