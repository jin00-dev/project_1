/**
 * 현재시간 디지털 시계 구현 
 */



function currentTime() {
	
	const date = new Date();
	let YYYY = String(date.getFullYear());
	let MM = String(date.getMonth()+1);
	let DD = String(date.getDate());
	let hh = date.getHours();
	let mm = date.getMinutes();
	let ss = date.getSeconds();
	let session = "AM";
	
	if ( hh == 0 ) {
		hh = 12; 
	}
	
	if ( hh > 12 ) {
		hh = hh - 12; 
		session = " PM "; 
	}
	
	hh = (hh < 10) ? "0"+ hh : hh ;
	mm = (mm < 10) ? "0"+ mm : mm ; 
	ss = (ss < 10) ? "0"+ ss : ss ;
	
	const time =YYYY+"년"+MM+"월"+DD+"일"+ hh + ":" + mm + ":" + ss + ":" + " " + session ; 
	document.getElementById("clock").innerText = time ; 
	setTimeout(() => currentTime(), 1000);
}

currentTime();
