var API_KEY = "3466d537bdc3242cc3b76375b0c02842";

function onGeoOk(position) {
  var lat = position.coords.latitude; //위도
  var lon = position.coords.longitude; //경도
  var url = `https://api.openweathermap.org/data/2.5/weather?lat=${lat}&lon=${lon}&appid=${API_KEY}&units=metric`;
  //''로 안하고 ``백틱으로 url설정
  fetch(url).then((response) =>
    response.json().then((data) => {
      var city = document.querySelector("#weather p:first-child");
      var icon = document.querySelector("#weather img");
      var temp = document.querySelector("#weather p:nth-child(4)");
      var max = document.querySelector("#weather p span:first-child");
      var min = document.querySelector("#weather p span:nth-child(2)");
      var feel = document.querySelector("#weather p span:nth-child(3)");
      
      city.innerText = data.name; //innerText는 해당 부분에 들어있는 text를 말한다.
      
      var iconUrl='http://openweathermap.org/img/wn/'+data.weather[0].icon+'@2x.png';
      icon.src = iconUrl;
      
      temp.innerText = data.main.temp;
      max.innerText += data.main.temp_max; //+=를 해줌으로써 원래 적혀있던 text도 같이 보이게끔 했다.
      min.innerText += data.main.temp_min;
      feel.innerText += data.main.feels_like;
      
      
      var weather = data.weather[0].main;
      var background = document.querySelector(".box");
      if(weather==='Clouds'){
      	background.classList.add('weather_cloud');
      }else if(weather==='Clear'){
      	background.classList.add('weather_clear');
      }else if(weather==="Atmosphere"){
      	background.classList.add('weather_atmosphere');
      }else if(weather==="Snow"){
      	background.classList.add('weather_snow');
      }else if(weather==="Rain"){
      	background.classList.add('weather_rain');
      }else if(weather==="Drizzle"){
      	background.classList.add('weather_drizzle');
      }else if(weather==="Thunderstorm"){
      	background.classList.add('weather_thunderstorm');
      }
    })
  );
}

function onGetError() {
  alert("Can't find you. No weather for you.");
}

navigator.geolocation.getCurrentPosition(onGeoOk, onGetError);
//getCurrentPosition함수는 2개의 인수가 필요하다.
//하나는 모든게 잘됐을 때 (success했을 때) 실행될 함수, 나머지 하나는 에러가 발생했을 때 실행될 함수이다.

var now = new Date();
var year = now.getFullYear();
var month = now.getMonth()+1;
var dated = now.getDate();
var day = now.getDay();

if(day==0){
	var dayko = "일요일";
}else if(day==1){
	dayko = "월요일";
}else if(day==2){
	dayko = "화요일";
}else if(day==3){
	dayko = "수요일";
}else if(day==4){
	dayko = "목요일";
}else if(day==5){
	dayko = "금요일";
}else if(day==6){
	dayko = "토요일";
}

var date = document.querySelector("#weather p:nth-child(2)");
date.innerText += year+"년 "+month+"월 "+dated+"일 "+dayko;