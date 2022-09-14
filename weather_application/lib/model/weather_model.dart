class Weather {
  String? cityName;
  String? countryName;
  double? temp;
  String? description;
  int? humidity;
  double? precipitation;
  int? pressure;
  double? windSpeed;
  String? windDirection;

  Weather(
      {this.cityName,
      this.countryName,
      this.temp,
      this.description,
      this.humidity,
      this.precipitation,
      this.pressure,
      this.windSpeed,
      this.windDirection});

  Weather.fromJson(Map<String, dynamic> json) {
    cityName = json["city"]["name"];
    countryName = json["city"]["country"];
    temp = json["main"]["temp"];
    description = json["weather"]["description"];
    humidity = json["main"]["humidity"];
    precipitation = json["pop"];
    pressure = json["main"]["pressure"];
    windSpeed = json["wind"]["speed"];
    windDirection = json["wind"]["deg"];
  }
}
