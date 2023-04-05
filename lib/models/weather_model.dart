// class WeatherModel {
//   WeatherModel({
//     this.count,
//     this.data,
//   });

//   int? count;
//   List<Datum>? data;

//   factory WeatherModel.fromJson(Map<String, dynamic> json) => WeatherModel(
//         count: json["count"],
//         data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
//       );
// }

// class Datum {
//   Datum({
//     this.appTemp,
//     this.cityName,
//     this.datetime,
//     this.weather,
//     this.rh,
//     this.windSpd,
//     this.precip,
//   });

//   double? appTemp;
//   String? cityName;
//   String? datetime;
//   Weather? weather;
//   int? rh;
//   double? windSpd;
//   int? precip;

//   factory Datum.fromJson(Map<String, dynamic> json) => Datum(
//         appTemp: json["app_temp"].toDouble(),
//         cityName: json["city_name"],
//         datetime: json["datetime"],
//         weather: Weather.fromJson(json["weather"]),
//         rh: json["rh"],
//         windSpd: json["wind_spd"].toDouble(),
//         precip: json["precip"]
//       );
// }

// class Weather {
//   Weather({
//     this.description,
//     this.code,
//     this.icon,
//   });

//   String? description;
//   int? code;
//   String? icon;

//   factory Weather.fromJson(Map<String, dynamic> json) => Weather(
//         description: json["description"],
//         code: json["code"],
//         icon: json["icon"],
//       );
// }
