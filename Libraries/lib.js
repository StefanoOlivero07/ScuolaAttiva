"use strict"

const MAPS_URL = "https://maps.googleapis.com/maps/api/js"

// Se vuota viene assegnata  l'origine da cui è stata scaricata la pagina

function inviaRichiesta(method, url, parameters={}) {
	let options={
		"baseURL": "",
		"url":  url, 
		"method": method.toUpperCase(),
		"headers": {
			"Accept": "application/json",
		},
		"timeout": 5000,
		"responseType": "json",
	}
	if(parameters instanceof FormData){
		// i parametri rimangono così come sono e vengono inseriti nel body
		options.headers["Content-Type"]='multipart/form-data;' 
		options["data"]=parameters     // Accept FormData, File, Blob
	}	
	else if(method.toUpperCase()=="GET"){
	    options.headers["Content-Type"] =
		                    'application/x-www-form-urlencoded;charset=utf-8'
	    options["params"]=parameters   // Accept plain object or URLSearchParams
	}
	else{
		// JSON-Server
		options.headers["Content-Type"] = 'application/json; charset=utf-8' 
		
		/* PHP
	    options.headers["Content-Type"] =
                          	'application/x-www-form-urlencoded;charset=utf-8' */
		
		options["data"]=parameters    
	}	
	return axios(options)             
}

function errore(err) {
	if(!err.response) {
		Swal.fire({
			"title": "Server error",
			"text": "Connection Refused or Server timeout",
			"icon": "error",
			"color": "#fff",
			"background": "#001f3f",
			"confirmButtonColor": "#f27474"
		});
	}
	else if (err.response.status == 200) {
		Swal.fire({
			"title": "Server error",
			"text": "Incorrect data format: " + err.response.data,
			"icon": "error",
			"color": "#fff",
			"background": "#001f3f",
			"confirmButtonColor": "#f27474"
		});
	}
    else {
		Swal.fire({
			"title": "Server Error",
			"text": "Server Error: " + err.response.status + " - " + err.response.data,
			"icon": "error",
			"color": "#fff",
			"background": "#001f3f",
			"confirmButtonColor": "#f27474"
		})
	}
}

function caricaGoogleMaps(){
	let promise =  new Promise(function(resolve, reject){
		let script = document.createElement('script');
		script.type = 'text/javascript';
		  script.src = MAPS_URL + '?v=3&key='+ MAP_KEY;
		document.body.appendChild(script);
		script.onload = function(){
			// console.log("GoogleMaps caricate correttamente")
			resolve()
		}
		script.onerror = function (){
			// console.log("Errore caricamento GoogleMaps")
		    reject("Errore caricamento GoogleMaps")
		}
	})
	return promise
}

