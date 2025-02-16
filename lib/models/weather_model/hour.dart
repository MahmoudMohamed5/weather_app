import 'condition.dart';

class Hour {
	num? timeEpoch;
	String? time;
	double? tempC;
	double? tempF;
	num? isDay;
	Condition? condition;
	double? windMph;
	double? windKph;
	num? windDegree;
	String? windDir;
	double? pressureMb;
	double? pressureIn;
	double? precipMm;
	double? precipIn;
	double? snowCm;
	num? humidity;
	num? cloud;
	double? feelslikeC;
	double? feelslikeF;
	double? windchillC;
	double? windchillF;
	double? heatindexC;
	double? heatindexF;
	double? dewpointC;
	double? dewpointF;
	num? willItRain;
	num? chanceOfRain;
	num? willItSnow;
	num? chanceOfSnow;
	double? visKm;
	double? visMiles;
	double? gustMph;
	double? gustKph;
	num? uv;
	double? shortRad;
	double? diffRad;

	Hour({
		this.timeEpoch, 
		this.time, 
		this.tempC, 
		this.tempF, 
		this.isDay, 
		this.condition, 
		this.windMph, 
		this.windKph, 
		this.windDegree, 
		this.windDir, 
		this.pressureMb, 
		this.pressureIn, 
		this.precipMm, 
		this.precipIn, 
		this.snowCm, 
		this.humidity, 
		this.cloud, 
		this.feelslikeC, 
		this.feelslikeF, 
		this.windchillC, 
		this.windchillF, 
		this.heatindexC, 
		this.heatindexF, 
		this.dewpointC, 
		this.dewpointF, 
		this.willItRain, 
		this.chanceOfRain, 
		this.willItSnow, 
		this.chanceOfSnow, 
		this.visKm, 
		this.visMiles, 
		this.gustMph, 
		this.gustKph, 
		this.uv, 
		this.shortRad, 
		this.diffRad, 
	});

	factory Hour.fromJson(Map<String, dynamic> json) => Hour(
				timeEpoch: json['time_epoch'] as num?,
				time: json['time'] as String?,
				tempC: (json['temp_c'] as num?)?.toDouble(),
				tempF: (json['temp_f'] as num?)?.toDouble(),
				isDay: json['is_day'] as num?,
				condition: json['condition'] == null
						? null
						: Condition.fromJson(json['condition'] as Map<String, dynamic>),
				windMph: (json['wind_mph'] as num?)?.toDouble(),
				windKph: (json['wind_kph'] as num?)?.toDouble(),
				windDegree: json['wind_degree'] as num?,
				windDir: json['wind_dir'] as String?,
				pressureMb: json['pressure_mb'] as double?,
				pressureIn: (json['pressure_in'] as num?)?.toDouble(),
				precipMm: (json['precip_mm'] as num?)?.toDouble(),
				precipIn: (json['precip_in'] as num?)?.toDouble(),
				snowCm: json['snow_cm'] as double?,
				humidity: json['humidity'] as num?,
				cloud: json['cloud'] as num?,
				feelslikeC: (json['feelslike_c'] as num?)?.toDouble(),
				feelslikeF: (json['feelslike_f'] as num?)?.toDouble(),
				windchillC: (json['windchill_c'] as num?)?.toDouble(),
				windchillF: (json['windchill_f'] as num?)?.toDouble(),
				heatindexC: (json['heatindex_c'] as num?)?.toDouble(),
				heatindexF: (json['heatindex_f'] as num?)?.toDouble(),
				dewpointC: (json['dewpoint_c'] as num?)?.toDouble(),
				dewpointF: (json['dewpoint_f'] as num?)?.toDouble(),
				willItRain: json['will_it_rain'] as num?,
				chanceOfRain: json['chance_of_rain'] as num?,
				willItSnow: json['will_it_snow'] as num?,
				chanceOfSnow: json['chance_of_snow'] as num?,
				visKm: json['vis_km'] as double?,
				visMiles: json['vis_miles'] as double?,
				gustMph: (json['gust_mph'] as num?)?.toDouble(),
				gustKph: (json['gust_kph'] as num?)?.toDouble(),
				uv: json['uv'] as num?,
				shortRad: (json['short_rad'] as num?)?.toDouble(),
				diffRad: (json['diff_rad'] as num?)?.toDouble(),
			);

	Map<String, dynamic> toJson() => {
				'time_epoch': timeEpoch,
				'time': time,
				'temp_c': tempC,
				'temp_f': tempF,
				'is_day': isDay,
				'condition': condition?.toJson(),
				'wind_mph': windMph,
				'wind_kph': windKph,
				'wind_degree': windDegree,
				'wind_dir': windDir,
				'pressure_mb': pressureMb,
				'pressure_in': pressureIn,
				'precip_mm': precipMm,
				'precip_in': precipIn,
				'snow_cm': snowCm,
				'humidity': humidity,
				'cloud': cloud,
				'feelslike_c': feelslikeC,
				'feelslike_f': feelslikeF,
				'windchill_c': windchillC,
				'windchill_f': windchillF,
				'heatindex_c': heatindexC,
				'heatindex_f': heatindexF,
				'dewpoint_c': dewpointC,
				'dewpoint_f': dewpointF,
				'will_it_rain': willItRain,
				'chance_of_rain': chanceOfRain,
				'will_it_snow': willItSnow,
				'chance_of_snow': chanceOfSnow,
				'vis_km': visKm,
				'vis_miles': visMiles,
				'gust_mph': gustMph,
				'gust_kph': gustKph,
				'uv': uv,
				'short_rad': shortRad,
				'diff_rad': diffRad,
			};
}
