navigator.geolocation.getCurrentPosition(function(location1) {
	   
	    var mymap = L.map('mapid1').setView([20.9084384, 107.0682782], 19);
	    console.log(mymap);
	    L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
	        maxZoom: 16,
	        attribution: '© OpenStreetMap'
	    }).addTo(mymap);
	    
	    var taxiIcon = L.icon({
			iconUrl: 'https://icon-library.com/images/free-car-icon/free-car-icon-0.jpg',
			iconSize: [40, 40]
		})

		var marker = L.marker([location1.coords.latitude, location1.coords.longitude], { icon: taxiIcon }).addTo(mymap);
	    
	    var control = L.Routing.control({
	      waypoints: [
	        L.latLng(location1.coords.latitude, location1.coords.longitude),
	        L.latLng(20.9084384, 107.0682782)
	      ],
	      router: new L.Routing.osrmv1({
	        language: 'en',
	        profile: 'car'
	      }),
	      geocoder: L.Control.Geocoder.nominatim({})
	    }).on('routesfound', function (e) {
				var routes = e.routes;
				console.log(routes);

				e.routes[0].coordinates.forEach(function (coord, index) {
					setTimeout(function () {
						marker.setLatLng([coord.lat, coord.lng]);
					}, 30 * index)
				})
		}).addTo(mymap);
	    
	    var popup = L.popup();

	    function onMapClick(e) {
	        popup
	            .setLatLng(e.latlng)
	            .setContent("You clicked the map at " + e.latlng.toString())
	            .openOn(mymap);
	    }
	    mymap.on('click', onMapClick); 
	    function createButton(label, container) {
	        var btn = L.DomUtil.create('button', '', container);
	        btn.setAttribute('type', 'button');
	        btn.innerHTML = label;
	        return btn;
	      }
	    
	    mymap.on('click', function (e) {
	        var container = L.DomUtil.create('div'), startBtn = createButton('Chọn điểm bắt đầu', container), destBtn = createButton('Chọn điểm đến', container);
	        L.popup().setContent(container).setLatLng(e.latlng).openOn(mymap);

	        L.DomEvent.on(startBtn, 'click', function () {
	          control.spliceWaypoints(0, 1, e.latlng);
	          mymap.closePopup();
	        });

	        L.DomEvent.on(destBtn, 'click', function () {
	          control.spliceWaypoints(control.getWaypoints().length - 1, 1, e.latlng);
	          mymap.closePopup();
	        });
	      });
	    
	    L.control.locate({
	        drawCircle: false,
	        position: 'topleft',
	        strings: {
	          title: "Vị trí của tôi"
	        },
	        initialZoomLevel: 13,
	        flyTo: true,
	        locateOptions: { enableHighAccuracy: true }
	      }).addTo(mymap);
	    mymap.on('locationfound', function (e) {
	        control.spliceWaypoints(0, 1, e.latlng);
	      }); 
    });