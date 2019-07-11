$(document).on("ready turbolinks:load", function () {
    //console.log("carga el mapa");
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



});

// function placeMarker(position, map) {
//     var marker = new google.maps.Marker({
//         position: position,
//         map: map
//     });
//     map.panTo(position);

// }

var x = document.getElementById("bs_address");

// function getLocation() {
//     if (navigator.geolocation) {
//         console.log("prueba de geo")
//         navigator.geolocation.getCurrentPosition(showPosition);
//     } else {
//     x.innerHTML = "Geolocation is not supported by this browser.";
//     }
// }
// function showPosition(position) {
//     x.innerHTML = "Latitude: "+position.coords.latitude+"<br>Longitude:"+position.coords.longitude;
// }

$("#get_location").on('click', function (event) { 
    event.preventDefault(); 
    $(this).html('<i class="fa fa-spinner fa-spin"> </i>')
    if (navigator.geolocation) { 
        navigator.geolocation.getCurrentPosition(getAddress); 
    } else { 
        $('body').append("Geolocation is not supported by this browser."); 
    } 
})

if (navigator.geolocation) {
    navigator.geolocation.getCurrentPosition(getAddress);
} else {
    x.innerHTML = "Geolocation is not supported by this browser.";
}
function getAddress(position) {
    var latitude = position.coords.latitude;
    var longitude = position.coords.longitude;
    $.ajax({
        url: '/locations/find_address',
        type: 'GET',
        dataType: 'json',
        data: { latitude: latitude, longitude: longitude }
    })
        .done(function (data) {
            $('#bs_address').val(data.address);
            console.log(data.address)
        })
        .always(function (_data) {
            $("#get_location").html('<i class="fa fa-map-marker"> </i>');
        }) 
};


