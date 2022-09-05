class Weather{
  var CityName;
  var icon;
  var condition;
  var tem;
  var wind;
  var humidity;
  var wind_dir;
  var guest;
  var uv;
  var pressure;
  var pricipe;
  var last_update;

  Weather(
  {
    required this.CityName,
    required this.icon,
    required this.condition,
    required this.tem,
    required this.wind,
    required this.humidity,
    required this.wind_dir,
    required this.guest,
    required this.uv,
    required this.pressure,
    required this.pricipe,
    required this.last_update
}
      );
  Weather.fromJson(Map<String,dynamic> json){
    CityName = json['location']['name'];
    icon = json['current']['condition']['icon'];
    condition = json['current']['condition']['text'];
    tem = json['current']['temp_c'];
    wind = json['current']['wind_kph'];
    humidity = json['current']['humidity'];
    wind_dir = json['current']['wind_dir'];
    pressure = json['current']['pressure_mb'];
    pricipe = json['current']['precip_mm'];
    last_update = json['current']['last_updated'];
    guest = json['current']['gust_kph'];
    uv = json['current']['uv'];






  }
}