$(document).on("ready turbolinks:load", function () {
    console.log("carga el mapa");
    handler = Gmaps.build('Google');
    handler.buildMap({
        provider: {},
        internal: { id: 'map' }
    }, function () {
        handler.map.centerOn({ lat: -33, lng: -71 })
        // markers = handler.addMarkers(<%=raw @hash.to_json %>);
});

// google.maps.event.addListener(handler.getMap(), "click", function(){    
//     console.log("hola");
// });


function placeMarker(position, map) {
    var marker = new google.maps.Marker({
        position: position,
        map: map
    });
    map.panTo(position);
}
    });