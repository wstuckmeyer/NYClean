$(document).ready(function() {
	var lat;
	var lng;
	function geoCode(e){
		//prevents submittal
		e.preventDefault();

		var location = document.getElementById('project_location').value;
		axios.get('https://maps.googleapis.com/maps/api/geocode/json?', {
			params:{
				address: location,
				key: 'AIzaSyC2RCgQ2GZ4w0zMxOmbC2_fOvQt26wpSSA'
			}
		})
		.then(function(response){
			console.log(response);
			//log full response
			var formattedAddress = response.data.results[0].formatted_address;
			var formattedAddressOutput = `${formattedAddress}`;

			var addressComponents = response.data.results[0].address_components;
			var addressComponentsOutput = '<ul>';
			for(var i = 0; i < addressComponents.length; i++){
				addressComponentsOutput += `${addressComponents[i].types[0]}: ${addressComponents[i].long_name}`;
			}

			lat = response.data.results[0].geometry.location.lat;
			lng = response.data.results[0].geometry.location.lng;
		}).then(function(){
			var map = new google.maps.Map(document.getElementById('map'), {
				center: {lat: lat, lng: lng},
				zoom: 15
			});
		})
		.catch(function(error){
			console.log(error);
		})

	}

	var locationForm = document.getElementById('project_location');
	locationForm.addEventListener('project-submit', geoCode);	
});



