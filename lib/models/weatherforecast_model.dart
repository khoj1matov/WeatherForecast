class WeatherForecastModel {
  WeatherForecastModel({
    this.cityName,
    this.countryCode,
    this.data,
    this.lat,
    this.lon,
    this.stateCode,
    this.timezone,
  });

  String? cityName;
  String? countryCode;
  List<Datum>? data;
  String? lat;
  String? lon;
  String? stateCode;
  String? timezone;

  factory WeatherForecastModel.fromJson(Map<String, dynamic> json) => WeatherForecastModel(
        cityName: json["city_name"],
        countryCode: json["country_code"],
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
        lat: json["lat"],
        lon: json["lon"],
        stateCode: json["state_code"],
        timezone: json["timezone"],
      );
}

class Datum {
  Datum({
    this.appMaxTemp,
    this.appMinTemp,
    this.clouds,
    this.cloudsHi,
    this.cloudsLow,
    this.cloudsMid,
    this.datetime,
    this.dewpt,
    this.highTemp,
    this.lowTemp,
    this.maxDhi,
    this.maxTemp,
    this.minTemp,
    this.moonPhase,
    this.moonPhaseLunation,
    this.moonriseTs,
    this.moonsetTs,
    this.ozone,
    this.pop,
    this.precip,
    this.pres,
    this.rh,
    this.slp,
    this.snow,
    this.snowDepth,
    this.sunriseTs,
    this.sunsetTs,
    this.temp,
    this.ts,
    this.uv,
    this.validDate,
    this.vis,
    this.weather,
    this.windCdir,
    this.windCdirFull,
    this.windDir,
    this.windGustSpd,
    this.windSpd,
  });

  double? appMaxTemp;
  double? appMinTemp;
  int? clouds;
  int? cloudsHi;
  int? cloudsLow;
  int? cloudsMid;
  DateTime? datetime;
  double? dewpt;
  double? highTemp;
  double? lowTemp;
  dynamic maxDhi;
  double? maxTemp;
  double? minTemp;
  double? moonPhase;
  double? moonPhaseLunation;
  int? moonriseTs;
  int? moonsetTs;
  double? ozone;
  int? pop;
  double? precip;
  double? pres;
  int? rh;
  double? slp;
  int? snow;
  int? snowDepth;
  int? sunriseTs;
  int? sunsetTs;
  double? temp;
  int? ts;
  double? uv;
  DateTime? validDate;
  double? vis;
  Weather? weather;
  String? windCdir;
  String? windCdirFull;
  int? windDir;
  double? windGustSpd;
  double? windSpd;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        appMaxTemp: json["app_max_temp"].toDouble(),
        appMinTemp: json["app_min_temp"].toDouble(),
        clouds: json["clouds"],
        cloudsHi: json["clouds_hi"],
        cloudsLow: json["clouds_low"],
        cloudsMid: json["clouds_mid"],
        datetime: DateTime.parse(json["datetime"]),
        dewpt: json["dewpt"].toDouble(),
        highTemp: json["high_temp"].toDouble(),
        lowTemp: json["low_temp"].toDouble(),
        maxDhi: json["max_dhi"],
        maxTemp: json["max_temp"].toDouble(),
        minTemp: json["min_temp"].toDouble(),
        moonPhase: json["moon_phase"].toDouble(),
        moonPhaseLunation: json["moon_phase_lunation"].toDouble(),
        moonriseTs: json["moonrise_ts"],
        moonsetTs: json["moonset_ts"],
        ozone: json["ozone"].toDouble(),
        pop: json["pop"],
        precip: json["precip"].toDouble(),
        pres: json["pres"].toDouble(),
        rh: json["rh"],
        slp: json["slp"].toDouble(),
        snow: json["snow"],
        snowDepth: json["snow_depth"],
        sunriseTs: json["sunrise_ts"],
        sunsetTs: json["sunset_ts"],
        temp: json["temp"].toDouble(),
        ts: json["ts"],
        uv: json["uv"].toDouble(),
        validDate: DateTime.parse(json["valid_date"]),
        vis: json["vis"].toDouble(),
        weather: Weather.fromJson(json["weather"]),
        windCdir: json["wind_cdir"],
        windCdirFull: json["wind_cdir_full"],
        windDir: json["wind_dir"],
        windGustSpd: json["wind_gust_spd"].toDouble(),
        windSpd: json["wind_spd"].toDouble(),
      );
}

class Weather {
  Weather({
    this.description,
    this.code,
    this.icon,
  });

  String? description;
  int? code;
  String? icon;

  factory Weather.fromJson(Map<String, dynamic> json) => Weather(
        description: json["description"],
        code: json["code"],
        icon: json["icon"],
      );
}
