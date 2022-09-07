// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'complete_weather.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CompleteWeatherModel _$CompleteWeatherModelFromJson(Map<String, dynamic> json) {
  return _CompleteWeatherModel.fromJson(json);
}

/// @nodoc
mixin _$CompleteWeatherModel {
  @HiveField(0)
  double? get lat => throw _privateConstructorUsedError;
  @HiveField(1)
  double? get lon => throw _privateConstructorUsedError;
  @HiveField(2)
  CurrentWeather? get current => throw _privateConstructorUsedError;
  @HiveField(3)
  List<HourlyWeather>? get hourly => throw _privateConstructorUsedError;
  @HiveField(4)
  List<DailyWeather>? get daily => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CompleteWeatherModelCopyWith<CompleteWeatherModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompleteWeatherModelCopyWith<$Res> {
  factory $CompleteWeatherModelCopyWith(CompleteWeatherModel value,
          $Res Function(CompleteWeatherModel) then) =
      _$CompleteWeatherModelCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) double? lat,
      @HiveField(1) double? lon,
      @HiveField(2) CurrentWeather? current,
      @HiveField(3) List<HourlyWeather>? hourly,
      @HiveField(4) List<DailyWeather>? daily});

  $CurrentWeatherCopyWith<$Res>? get current;
}

/// @nodoc
class _$CompleteWeatherModelCopyWithImpl<$Res>
    implements $CompleteWeatherModelCopyWith<$Res> {
  _$CompleteWeatherModelCopyWithImpl(this._value, this._then);

  final CompleteWeatherModel _value;
  // ignore: unused_field
  final $Res Function(CompleteWeatherModel) _then;

  @override
  $Res call({
    Object? lat = freezed,
    Object? lon = freezed,
    Object? current = freezed,
    Object? hourly = freezed,
    Object? daily = freezed,
  }) {
    return _then(_value.copyWith(
      lat: lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double?,
      lon: lon == freezed
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double?,
      current: current == freezed
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as CurrentWeather?,
      hourly: hourly == freezed
          ? _value.hourly
          : hourly // ignore: cast_nullable_to_non_nullable
              as List<HourlyWeather>?,
      daily: daily == freezed
          ? _value.daily
          : daily // ignore: cast_nullable_to_non_nullable
              as List<DailyWeather>?,
    ));
  }

  @override
  $CurrentWeatherCopyWith<$Res>? get current {
    if (_value.current == null) {
      return null;
    }

    return $CurrentWeatherCopyWith<$Res>(_value.current!, (value) {
      return _then(_value.copyWith(current: value));
    });
  }
}

/// @nodoc
abstract class _$$_CompleteWeatherModelCopyWith<$Res>
    implements $CompleteWeatherModelCopyWith<$Res> {
  factory _$$_CompleteWeatherModelCopyWith(_$_CompleteWeatherModel value,
          $Res Function(_$_CompleteWeatherModel) then) =
      __$$_CompleteWeatherModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) double? lat,
      @HiveField(1) double? lon,
      @HiveField(2) CurrentWeather? current,
      @HiveField(3) List<HourlyWeather>? hourly,
      @HiveField(4) List<DailyWeather>? daily});

  @override
  $CurrentWeatherCopyWith<$Res>? get current;
}

/// @nodoc
class __$$_CompleteWeatherModelCopyWithImpl<$Res>
    extends _$CompleteWeatherModelCopyWithImpl<$Res>
    implements _$$_CompleteWeatherModelCopyWith<$Res> {
  __$$_CompleteWeatherModelCopyWithImpl(_$_CompleteWeatherModel _value,
      $Res Function(_$_CompleteWeatherModel) _then)
      : super(_value, (v) => _then(v as _$_CompleteWeatherModel));

  @override
  _$_CompleteWeatherModel get _value => super._value as _$_CompleteWeatherModel;

  @override
  $Res call({
    Object? lat = freezed,
    Object? lon = freezed,
    Object? current = freezed,
    Object? hourly = freezed,
    Object? daily = freezed,
  }) {
    return _then(_$_CompleteWeatherModel(
      lat: lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double?,
      lon: lon == freezed
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double?,
      current: current == freezed
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as CurrentWeather?,
      hourly: hourly == freezed
          ? _value._hourly
          : hourly // ignore: cast_nullable_to_non_nullable
              as List<HourlyWeather>?,
      daily: daily == freezed
          ? _value._daily
          : daily // ignore: cast_nullable_to_non_nullable
              as List<DailyWeather>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CompleteWeatherModel
    with DiagnosticableTreeMixin
    implements _CompleteWeatherModel {
  const _$_CompleteWeatherModel(
      {@HiveField(0) this.lat,
      @HiveField(1) this.lon,
      @HiveField(2) this.current,
      @HiveField(3) final List<HourlyWeather>? hourly,
      @HiveField(4) final List<DailyWeather>? daily})
      : _hourly = hourly,
        _daily = daily;

  factory _$_CompleteWeatherModel.fromJson(Map<String, dynamic> json) =>
      _$$_CompleteWeatherModelFromJson(json);

  @override
  @HiveField(0)
  final double? lat;
  @override
  @HiveField(1)
  final double? lon;
  @override
  @HiveField(2)
  final CurrentWeather? current;
  final List<HourlyWeather>? _hourly;
  @override
  @HiveField(3)
  List<HourlyWeather>? get hourly {
    final value = _hourly;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<DailyWeather>? _daily;
  @override
  @HiveField(4)
  List<DailyWeather>? get daily {
    final value = _daily;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CompleteWeatherModel(lat: $lat, lon: $lon, current: $current, hourly: $hourly, daily: $daily)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CompleteWeatherModel'))
      ..add(DiagnosticsProperty('lat', lat))
      ..add(DiagnosticsProperty('lon', lon))
      ..add(DiagnosticsProperty('current', current))
      ..add(DiagnosticsProperty('hourly', hourly))
      ..add(DiagnosticsProperty('daily', daily));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CompleteWeatherModel &&
            const DeepCollectionEquality().equals(other.lat, lat) &&
            const DeepCollectionEquality().equals(other.lon, lon) &&
            const DeepCollectionEquality().equals(other.current, current) &&
            const DeepCollectionEquality().equals(other._hourly, _hourly) &&
            const DeepCollectionEquality().equals(other._daily, _daily));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(lat),
      const DeepCollectionEquality().hash(lon),
      const DeepCollectionEquality().hash(current),
      const DeepCollectionEquality().hash(_hourly),
      const DeepCollectionEquality().hash(_daily));

  @JsonKey(ignore: true)
  @override
  _$$_CompleteWeatherModelCopyWith<_$_CompleteWeatherModel> get copyWith =>
      __$$_CompleteWeatherModelCopyWithImpl<_$_CompleteWeatherModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CompleteWeatherModelToJson(
      this,
    );
  }
}

abstract class _CompleteWeatherModel implements CompleteWeatherModel {
  const factory _CompleteWeatherModel(
      {@HiveField(0) final double? lat,
      @HiveField(1) final double? lon,
      @HiveField(2) final CurrentWeather? current,
      @HiveField(3) final List<HourlyWeather>? hourly,
      @HiveField(4) final List<DailyWeather>? daily}) = _$_CompleteWeatherModel;

  factory _CompleteWeatherModel.fromJson(Map<String, dynamic> json) =
      _$_CompleteWeatherModel.fromJson;

  @override
  @HiveField(0)
  double? get lat;
  @override
  @HiveField(1)
  double? get lon;
  @override
  @HiveField(2)
  CurrentWeather? get current;
  @override
  @HiveField(3)
  List<HourlyWeather>? get hourly;
  @override
  @HiveField(4)
  List<DailyWeather>? get daily;
  @override
  @JsonKey(ignore: true)
  _$$_CompleteWeatherModelCopyWith<_$_CompleteWeatherModel> get copyWith =>
      throw _privateConstructorUsedError;
}

CurrentWeather _$CurrentWeatherFromJson(Map<String, dynamic> json) {
  return _CurrentWeather.fromJson(json);
}

/// @nodoc
mixin _$CurrentWeather {
  @HiveField(0)
  int? get dt => throw _privateConstructorUsedError;
  @HiveField(1)
  int? get sunrise => throw _privateConstructorUsedError;
  @HiveField(2)
  int? get sunset => throw _privateConstructorUsedError;
  @HiveField(3)
  double? get temp => throw _privateConstructorUsedError;
  @HiveField(4)
  double? get feels_like => throw _privateConstructorUsedError;
  @HiveField(5)
  int? get humidity => throw _privateConstructorUsedError;
  @HiveField(6)
  double? get uvi => throw _privateConstructorUsedError;
  @HiveField(7)
  double? get wind_speed => throw _privateConstructorUsedError;
  @HiveField(8)
  List<Weather>? get weather => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CurrentWeatherCopyWith<CurrentWeather> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentWeatherCopyWith<$Res> {
  factory $CurrentWeatherCopyWith(
          CurrentWeather value, $Res Function(CurrentWeather) then) =
      _$CurrentWeatherCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) int? dt,
      @HiveField(1) int? sunrise,
      @HiveField(2) int? sunset,
      @HiveField(3) double? temp,
      @HiveField(4) double? feels_like,
      @HiveField(5) int? humidity,
      @HiveField(6) double? uvi,
      @HiveField(7) double? wind_speed,
      @HiveField(8) List<Weather>? weather});
}

/// @nodoc
class _$CurrentWeatherCopyWithImpl<$Res>
    implements $CurrentWeatherCopyWith<$Res> {
  _$CurrentWeatherCopyWithImpl(this._value, this._then);

  final CurrentWeather _value;
  // ignore: unused_field
  final $Res Function(CurrentWeather) _then;

  @override
  $Res call({
    Object? dt = freezed,
    Object? sunrise = freezed,
    Object? sunset = freezed,
    Object? temp = freezed,
    Object? feels_like = freezed,
    Object? humidity = freezed,
    Object? uvi = freezed,
    Object? wind_speed = freezed,
    Object? weather = freezed,
  }) {
    return _then(_value.copyWith(
      dt: dt == freezed
          ? _value.dt
          : dt // ignore: cast_nullable_to_non_nullable
              as int?,
      sunrise: sunrise == freezed
          ? _value.sunrise
          : sunrise // ignore: cast_nullable_to_non_nullable
              as int?,
      sunset: sunset == freezed
          ? _value.sunset
          : sunset // ignore: cast_nullable_to_non_nullable
              as int?,
      temp: temp == freezed
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as double?,
      feels_like: feels_like == freezed
          ? _value.feels_like
          : feels_like // ignore: cast_nullable_to_non_nullable
              as double?,
      humidity: humidity == freezed
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int?,
      uvi: uvi == freezed
          ? _value.uvi
          : uvi // ignore: cast_nullable_to_non_nullable
              as double?,
      wind_speed: wind_speed == freezed
          ? _value.wind_speed
          : wind_speed // ignore: cast_nullable_to_non_nullable
              as double?,
      weather: weather == freezed
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<Weather>?,
    ));
  }
}

/// @nodoc
abstract class _$$_CurrentWeatherCopyWith<$Res>
    implements $CurrentWeatherCopyWith<$Res> {
  factory _$$_CurrentWeatherCopyWith(
          _$_CurrentWeather value, $Res Function(_$_CurrentWeather) then) =
      __$$_CurrentWeatherCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) int? dt,
      @HiveField(1) int? sunrise,
      @HiveField(2) int? sunset,
      @HiveField(3) double? temp,
      @HiveField(4) double? feels_like,
      @HiveField(5) int? humidity,
      @HiveField(6) double? uvi,
      @HiveField(7) double? wind_speed,
      @HiveField(8) List<Weather>? weather});
}

/// @nodoc
class __$$_CurrentWeatherCopyWithImpl<$Res>
    extends _$CurrentWeatherCopyWithImpl<$Res>
    implements _$$_CurrentWeatherCopyWith<$Res> {
  __$$_CurrentWeatherCopyWithImpl(
      _$_CurrentWeather _value, $Res Function(_$_CurrentWeather) _then)
      : super(_value, (v) => _then(v as _$_CurrentWeather));

  @override
  _$_CurrentWeather get _value => super._value as _$_CurrentWeather;

  @override
  $Res call({
    Object? dt = freezed,
    Object? sunrise = freezed,
    Object? sunset = freezed,
    Object? temp = freezed,
    Object? feels_like = freezed,
    Object? humidity = freezed,
    Object? uvi = freezed,
    Object? wind_speed = freezed,
    Object? weather = freezed,
  }) {
    return _then(_$_CurrentWeather(
      dt: dt == freezed
          ? _value.dt
          : dt // ignore: cast_nullable_to_non_nullable
              as int?,
      sunrise: sunrise == freezed
          ? _value.sunrise
          : sunrise // ignore: cast_nullable_to_non_nullable
              as int?,
      sunset: sunset == freezed
          ? _value.sunset
          : sunset // ignore: cast_nullable_to_non_nullable
              as int?,
      temp: temp == freezed
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as double?,
      feels_like: feels_like == freezed
          ? _value.feels_like
          : feels_like // ignore: cast_nullable_to_non_nullable
              as double?,
      humidity: humidity == freezed
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int?,
      uvi: uvi == freezed
          ? _value.uvi
          : uvi // ignore: cast_nullable_to_non_nullable
              as double?,
      wind_speed: wind_speed == freezed
          ? _value.wind_speed
          : wind_speed // ignore: cast_nullable_to_non_nullable
              as double?,
      weather: weather == freezed
          ? _value._weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<Weather>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CurrentWeather
    with DiagnosticableTreeMixin
    implements _CurrentWeather {
  const _$_CurrentWeather(
      {@HiveField(0) this.dt,
      @HiveField(1) this.sunrise,
      @HiveField(2) this.sunset,
      @HiveField(3) this.temp,
      @HiveField(4) this.feels_like,
      @HiveField(5) this.humidity,
      @HiveField(6) this.uvi,
      @HiveField(7) this.wind_speed,
      @HiveField(8) final List<Weather>? weather})
      : _weather = weather;

  factory _$_CurrentWeather.fromJson(Map<String, dynamic> json) =>
      _$$_CurrentWeatherFromJson(json);

  @override
  @HiveField(0)
  final int? dt;
  @override
  @HiveField(1)
  final int? sunrise;
  @override
  @HiveField(2)
  final int? sunset;
  @override
  @HiveField(3)
  final double? temp;
  @override
  @HiveField(4)
  final double? feels_like;
  @override
  @HiveField(5)
  final int? humidity;
  @override
  @HiveField(6)
  final double? uvi;
  @override
  @HiveField(7)
  final double? wind_speed;
  final List<Weather>? _weather;
  @override
  @HiveField(8)
  List<Weather>? get weather {
    final value = _weather;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CurrentWeather(dt: $dt, sunrise: $sunrise, sunset: $sunset, temp: $temp, feels_like: $feels_like, humidity: $humidity, uvi: $uvi, wind_speed: $wind_speed, weather: $weather)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CurrentWeather'))
      ..add(DiagnosticsProperty('dt', dt))
      ..add(DiagnosticsProperty('sunrise', sunrise))
      ..add(DiagnosticsProperty('sunset', sunset))
      ..add(DiagnosticsProperty('temp', temp))
      ..add(DiagnosticsProperty('feels_like', feels_like))
      ..add(DiagnosticsProperty('humidity', humidity))
      ..add(DiagnosticsProperty('uvi', uvi))
      ..add(DiagnosticsProperty('wind_speed', wind_speed))
      ..add(DiagnosticsProperty('weather', weather));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CurrentWeather &&
            const DeepCollectionEquality().equals(other.dt, dt) &&
            const DeepCollectionEquality().equals(other.sunrise, sunrise) &&
            const DeepCollectionEquality().equals(other.sunset, sunset) &&
            const DeepCollectionEquality().equals(other.temp, temp) &&
            const DeepCollectionEquality()
                .equals(other.feels_like, feels_like) &&
            const DeepCollectionEquality().equals(other.humidity, humidity) &&
            const DeepCollectionEquality().equals(other.uvi, uvi) &&
            const DeepCollectionEquality()
                .equals(other.wind_speed, wind_speed) &&
            const DeepCollectionEquality().equals(other._weather, _weather));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(dt),
      const DeepCollectionEquality().hash(sunrise),
      const DeepCollectionEquality().hash(sunset),
      const DeepCollectionEquality().hash(temp),
      const DeepCollectionEquality().hash(feels_like),
      const DeepCollectionEquality().hash(humidity),
      const DeepCollectionEquality().hash(uvi),
      const DeepCollectionEquality().hash(wind_speed),
      const DeepCollectionEquality().hash(_weather));

  @JsonKey(ignore: true)
  @override
  _$$_CurrentWeatherCopyWith<_$_CurrentWeather> get copyWith =>
      __$$_CurrentWeatherCopyWithImpl<_$_CurrentWeather>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CurrentWeatherToJson(
      this,
    );
  }
}

abstract class _CurrentWeather implements CurrentWeather {
  const factory _CurrentWeather(
      {@HiveField(0) final int? dt,
      @HiveField(1) final int? sunrise,
      @HiveField(2) final int? sunset,
      @HiveField(3) final double? temp,
      @HiveField(4) final double? feels_like,
      @HiveField(5) final int? humidity,
      @HiveField(6) final double? uvi,
      @HiveField(7) final double? wind_speed,
      @HiveField(8) final List<Weather>? weather}) = _$_CurrentWeather;

  factory _CurrentWeather.fromJson(Map<String, dynamic> json) =
      _$_CurrentWeather.fromJson;

  @override
  @HiveField(0)
  int? get dt;
  @override
  @HiveField(1)
  int? get sunrise;
  @override
  @HiveField(2)
  int? get sunset;
  @override
  @HiveField(3)
  double? get temp;
  @override
  @HiveField(4)
  double? get feels_like;
  @override
  @HiveField(5)
  int? get humidity;
  @override
  @HiveField(6)
  double? get uvi;
  @override
  @HiveField(7)
  double? get wind_speed;
  @override
  @HiveField(8)
  List<Weather>? get weather;
  @override
  @JsonKey(ignore: true)
  _$$_CurrentWeatherCopyWith<_$_CurrentWeather> get copyWith =>
      throw _privateConstructorUsedError;
}

Weather _$WeatherFromJson(Map<String, dynamic> json) {
  return _Weather.fromJson(json);
}

/// @nodoc
mixin _$Weather {
  @HiveField(0)
  int? get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String? get main => throw _privateConstructorUsedError;
  @HiveField(2)
  String? get description => throw _privateConstructorUsedError;
  @HiveField(3)
  String? get icon => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherCopyWith<Weather> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherCopyWith<$Res> {
  factory $WeatherCopyWith(Weather value, $Res Function(Weather) then) =
      _$WeatherCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) int? id,
      @HiveField(1) String? main,
      @HiveField(2) String? description,
      @HiveField(3) String? icon});
}

/// @nodoc
class _$WeatherCopyWithImpl<$Res> implements $WeatherCopyWith<$Res> {
  _$WeatherCopyWithImpl(this._value, this._then);

  final Weather _value;
  // ignore: unused_field
  final $Res Function(Weather) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? main = freezed,
    Object? description = freezed,
    Object? icon = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      main: main == freezed
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: icon == freezed
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_WeatherCopyWith<$Res> implements $WeatherCopyWith<$Res> {
  factory _$$_WeatherCopyWith(
          _$_Weather value, $Res Function(_$_Weather) then) =
      __$$_WeatherCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) int? id,
      @HiveField(1) String? main,
      @HiveField(2) String? description,
      @HiveField(3) String? icon});
}

/// @nodoc
class __$$_WeatherCopyWithImpl<$Res> extends _$WeatherCopyWithImpl<$Res>
    implements _$$_WeatherCopyWith<$Res> {
  __$$_WeatherCopyWithImpl(_$_Weather _value, $Res Function(_$_Weather) _then)
      : super(_value, (v) => _then(v as _$_Weather));

  @override
  _$_Weather get _value => super._value as _$_Weather;

  @override
  $Res call({
    Object? id = freezed,
    Object? main = freezed,
    Object? description = freezed,
    Object? icon = freezed,
  }) {
    return _then(_$_Weather(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      main: main == freezed
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: icon == freezed
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Weather with DiagnosticableTreeMixin implements _Weather {
  const _$_Weather(
      {@HiveField(0) this.id,
      @HiveField(1) this.main,
      @HiveField(2) this.description,
      @HiveField(3) this.icon});

  factory _$_Weather.fromJson(Map<String, dynamic> json) =>
      _$$_WeatherFromJson(json);

  @override
  @HiveField(0)
  final int? id;
  @override
  @HiveField(1)
  final String? main;
  @override
  @HiveField(2)
  final String? description;
  @override
  @HiveField(3)
  final String? icon;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Weather(id: $id, main: $main, description: $description, icon: $icon)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Weather'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('main', main))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('icon', icon));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Weather &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.main, main) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.icon, icon));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(main),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(icon));

  @JsonKey(ignore: true)
  @override
  _$$_WeatherCopyWith<_$_Weather> get copyWith =>
      __$$_WeatherCopyWithImpl<_$_Weather>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WeatherToJson(
      this,
    );
  }
}

abstract class _Weather implements Weather {
  const factory _Weather(
      {@HiveField(0) final int? id,
      @HiveField(1) final String? main,
      @HiveField(2) final String? description,
      @HiveField(3) final String? icon}) = _$_Weather;

  factory _Weather.fromJson(Map<String, dynamic> json) = _$_Weather.fromJson;

  @override
  @HiveField(0)
  int? get id;
  @override
  @HiveField(1)
  String? get main;
  @override
  @HiveField(2)
  String? get description;
  @override
  @HiveField(3)
  String? get icon;
  @override
  @JsonKey(ignore: true)
  _$$_WeatherCopyWith<_$_Weather> get copyWith =>
      throw _privateConstructorUsedError;
}

DailyWeather _$DailyWeatherFromJson(Map<String, dynamic> json) {
  return _DailyWeather.fromJson(json);
}

/// @nodoc
mixin _$DailyWeather {
  @HiveField(0)
  int? get dt => throw _privateConstructorUsedError;
  @HiveField(1)
  Tempretrue? get temp => throw _privateConstructorUsedError;
  @HiveField(2)
  List<Weather>? get weather => throw _privateConstructorUsedError;
  @HiveField(3)
  double? get rain => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DailyWeatherCopyWith<DailyWeather> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DailyWeatherCopyWith<$Res> {
  factory $DailyWeatherCopyWith(
          DailyWeather value, $Res Function(DailyWeather) then) =
      _$DailyWeatherCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) int? dt,
      @HiveField(1) Tempretrue? temp,
      @HiveField(2) List<Weather>? weather,
      @HiveField(3) double? rain});

  $TempretrueCopyWith<$Res>? get temp;
}

/// @nodoc
class _$DailyWeatherCopyWithImpl<$Res> implements $DailyWeatherCopyWith<$Res> {
  _$DailyWeatherCopyWithImpl(this._value, this._then);

  final DailyWeather _value;
  // ignore: unused_field
  final $Res Function(DailyWeather) _then;

  @override
  $Res call({
    Object? dt = freezed,
    Object? temp = freezed,
    Object? weather = freezed,
    Object? rain = freezed,
  }) {
    return _then(_value.copyWith(
      dt: dt == freezed
          ? _value.dt
          : dt // ignore: cast_nullable_to_non_nullable
              as int?,
      temp: temp == freezed
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as Tempretrue?,
      weather: weather == freezed
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<Weather>?,
      rain: rain == freezed
          ? _value.rain
          : rain // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }

  @override
  $TempretrueCopyWith<$Res>? get temp {
    if (_value.temp == null) {
      return null;
    }

    return $TempretrueCopyWith<$Res>(_value.temp!, (value) {
      return _then(_value.copyWith(temp: value));
    });
  }
}

/// @nodoc
abstract class _$$_DailyWeatherCopyWith<$Res>
    implements $DailyWeatherCopyWith<$Res> {
  factory _$$_DailyWeatherCopyWith(
          _$_DailyWeather value, $Res Function(_$_DailyWeather) then) =
      __$$_DailyWeatherCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) int? dt,
      @HiveField(1) Tempretrue? temp,
      @HiveField(2) List<Weather>? weather,
      @HiveField(3) double? rain});

  @override
  $TempretrueCopyWith<$Res>? get temp;
}

/// @nodoc
class __$$_DailyWeatherCopyWithImpl<$Res>
    extends _$DailyWeatherCopyWithImpl<$Res>
    implements _$$_DailyWeatherCopyWith<$Res> {
  __$$_DailyWeatherCopyWithImpl(
      _$_DailyWeather _value, $Res Function(_$_DailyWeather) _then)
      : super(_value, (v) => _then(v as _$_DailyWeather));

  @override
  _$_DailyWeather get _value => super._value as _$_DailyWeather;

  @override
  $Res call({
    Object? dt = freezed,
    Object? temp = freezed,
    Object? weather = freezed,
    Object? rain = freezed,
  }) {
    return _then(_$_DailyWeather(
      dt: dt == freezed
          ? _value.dt
          : dt // ignore: cast_nullable_to_non_nullable
              as int?,
      temp: temp == freezed
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as Tempretrue?,
      weather: weather == freezed
          ? _value._weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<Weather>?,
      rain: rain == freezed
          ? _value.rain
          : rain // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DailyWeather with DiagnosticableTreeMixin implements _DailyWeather {
  const _$_DailyWeather(
      {@HiveField(0) this.dt,
      @HiveField(1) this.temp,
      @HiveField(2) final List<Weather>? weather,
      @HiveField(3) this.rain})
      : _weather = weather;

  factory _$_DailyWeather.fromJson(Map<String, dynamic> json) =>
      _$$_DailyWeatherFromJson(json);

  @override
  @HiveField(0)
  final int? dt;
  @override
  @HiveField(1)
  final Tempretrue? temp;
  final List<Weather>? _weather;
  @override
  @HiveField(2)
  List<Weather>? get weather {
    final value = _weather;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @HiveField(3)
  final double? rain;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DailyWeather(dt: $dt, temp: $temp, weather: $weather, rain: $rain)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DailyWeather'))
      ..add(DiagnosticsProperty('dt', dt))
      ..add(DiagnosticsProperty('temp', temp))
      ..add(DiagnosticsProperty('weather', weather))
      ..add(DiagnosticsProperty('rain', rain));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DailyWeather &&
            const DeepCollectionEquality().equals(other.dt, dt) &&
            const DeepCollectionEquality().equals(other.temp, temp) &&
            const DeepCollectionEquality().equals(other._weather, _weather) &&
            const DeepCollectionEquality().equals(other.rain, rain));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(dt),
      const DeepCollectionEquality().hash(temp),
      const DeepCollectionEquality().hash(_weather),
      const DeepCollectionEquality().hash(rain));

  @JsonKey(ignore: true)
  @override
  _$$_DailyWeatherCopyWith<_$_DailyWeather> get copyWith =>
      __$$_DailyWeatherCopyWithImpl<_$_DailyWeather>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DailyWeatherToJson(
      this,
    );
  }
}

abstract class _DailyWeather implements DailyWeather {
  const factory _DailyWeather(
      {@HiveField(0) final int? dt,
      @HiveField(1) final Tempretrue? temp,
      @HiveField(2) final List<Weather>? weather,
      @HiveField(3) final double? rain}) = _$_DailyWeather;

  factory _DailyWeather.fromJson(Map<String, dynamic> json) =
      _$_DailyWeather.fromJson;

  @override
  @HiveField(0)
  int? get dt;
  @override
  @HiveField(1)
  Tempretrue? get temp;
  @override
  @HiveField(2)
  List<Weather>? get weather;
  @override
  @HiveField(3)
  double? get rain;
  @override
  @JsonKey(ignore: true)
  _$$_DailyWeatherCopyWith<_$_DailyWeather> get copyWith =>
      throw _privateConstructorUsedError;
}

Tempretrue _$TempretrueFromJson(Map<String, dynamic> json) {
  return _Tempretrue.fromJson(json);
}

/// @nodoc
mixin _$Tempretrue {
  @HiveField(0)
  double? get min => throw _privateConstructorUsedError;
  @HiveField(1)
  double? get max => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TempretrueCopyWith<Tempretrue> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TempretrueCopyWith<$Res> {
  factory $TempretrueCopyWith(
          Tempretrue value, $Res Function(Tempretrue) then) =
      _$TempretrueCopyWithImpl<$Res>;
  $Res call({@HiveField(0) double? min, @HiveField(1) double? max});
}

/// @nodoc
class _$TempretrueCopyWithImpl<$Res> implements $TempretrueCopyWith<$Res> {
  _$TempretrueCopyWithImpl(this._value, this._then);

  final Tempretrue _value;
  // ignore: unused_field
  final $Res Function(Tempretrue) _then;

  @override
  $Res call({
    Object? min = freezed,
    Object? max = freezed,
  }) {
    return _then(_value.copyWith(
      min: min == freezed
          ? _value.min
          : min // ignore: cast_nullable_to_non_nullable
              as double?,
      max: max == freezed
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
abstract class _$$_TempretrueCopyWith<$Res>
    implements $TempretrueCopyWith<$Res> {
  factory _$$_TempretrueCopyWith(
          _$_Tempretrue value, $Res Function(_$_Tempretrue) then) =
      __$$_TempretrueCopyWithImpl<$Res>;
  @override
  $Res call({@HiveField(0) double? min, @HiveField(1) double? max});
}

/// @nodoc
class __$$_TempretrueCopyWithImpl<$Res> extends _$TempretrueCopyWithImpl<$Res>
    implements _$$_TempretrueCopyWith<$Res> {
  __$$_TempretrueCopyWithImpl(
      _$_Tempretrue _value, $Res Function(_$_Tempretrue) _then)
      : super(_value, (v) => _then(v as _$_Tempretrue));

  @override
  _$_Tempretrue get _value => super._value as _$_Tempretrue;

  @override
  $Res call({
    Object? min = freezed,
    Object? max = freezed,
  }) {
    return _then(_$_Tempretrue(
      min: min == freezed
          ? _value.min
          : min // ignore: cast_nullable_to_non_nullable
              as double?,
      max: max == freezed
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Tempretrue with DiagnosticableTreeMixin implements _Tempretrue {
  const _$_Tempretrue({@HiveField(0) this.min, @HiveField(1) this.max});

  factory _$_Tempretrue.fromJson(Map<String, dynamic> json) =>
      _$$_TempretrueFromJson(json);

  @override
  @HiveField(0)
  final double? min;
  @override
  @HiveField(1)
  final double? max;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Tempretrue(min: $min, max: $max)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Tempretrue'))
      ..add(DiagnosticsProperty('min', min))
      ..add(DiagnosticsProperty('max', max));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Tempretrue &&
            const DeepCollectionEquality().equals(other.min, min) &&
            const DeepCollectionEquality().equals(other.max, max));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(min),
      const DeepCollectionEquality().hash(max));

  @JsonKey(ignore: true)
  @override
  _$$_TempretrueCopyWith<_$_Tempretrue> get copyWith =>
      __$$_TempretrueCopyWithImpl<_$_Tempretrue>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TempretrueToJson(
      this,
    );
  }
}

abstract class _Tempretrue implements Tempretrue {
  const factory _Tempretrue(
      {@HiveField(0) final double? min,
      @HiveField(1) final double? max}) = _$_Tempretrue;

  factory _Tempretrue.fromJson(Map<String, dynamic> json) =
      _$_Tempretrue.fromJson;

  @override
  @HiveField(0)
  double? get min;
  @override
  @HiveField(1)
  double? get max;
  @override
  @JsonKey(ignore: true)
  _$$_TempretrueCopyWith<_$_Tempretrue> get copyWith =>
      throw _privateConstructorUsedError;
}

HourlyWeather _$HourlyWeatherFromJson(Map<String, dynamic> json) {
  return _HourlyWeather.fromJson(json);
}

/// @nodoc
mixin _$HourlyWeather {
  @HiveField(0)
  int? get dt => throw _privateConstructorUsedError;
  @HiveField(1)
  double? get temp => throw _privateConstructorUsedError;
  @HiveField(2)
  List<Weather>? get weather => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HourlyWeatherCopyWith<HourlyWeather> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HourlyWeatherCopyWith<$Res> {
  factory $HourlyWeatherCopyWith(
          HourlyWeather value, $Res Function(HourlyWeather) then) =
      _$HourlyWeatherCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) int? dt,
      @HiveField(1) double? temp,
      @HiveField(2) List<Weather>? weather});
}

/// @nodoc
class _$HourlyWeatherCopyWithImpl<$Res>
    implements $HourlyWeatherCopyWith<$Res> {
  _$HourlyWeatherCopyWithImpl(this._value, this._then);

  final HourlyWeather _value;
  // ignore: unused_field
  final $Res Function(HourlyWeather) _then;

  @override
  $Res call({
    Object? dt = freezed,
    Object? temp = freezed,
    Object? weather = freezed,
  }) {
    return _then(_value.copyWith(
      dt: dt == freezed
          ? _value.dt
          : dt // ignore: cast_nullable_to_non_nullable
              as int?,
      temp: temp == freezed
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as double?,
      weather: weather == freezed
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<Weather>?,
    ));
  }
}

/// @nodoc
abstract class _$$_HourlyWeatherCopyWith<$Res>
    implements $HourlyWeatherCopyWith<$Res> {
  factory _$$_HourlyWeatherCopyWith(
          _$_HourlyWeather value, $Res Function(_$_HourlyWeather) then) =
      __$$_HourlyWeatherCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) int? dt,
      @HiveField(1) double? temp,
      @HiveField(2) List<Weather>? weather});
}

/// @nodoc
class __$$_HourlyWeatherCopyWithImpl<$Res>
    extends _$HourlyWeatherCopyWithImpl<$Res>
    implements _$$_HourlyWeatherCopyWith<$Res> {
  __$$_HourlyWeatherCopyWithImpl(
      _$_HourlyWeather _value, $Res Function(_$_HourlyWeather) _then)
      : super(_value, (v) => _then(v as _$_HourlyWeather));

  @override
  _$_HourlyWeather get _value => super._value as _$_HourlyWeather;

  @override
  $Res call({
    Object? dt = freezed,
    Object? temp = freezed,
    Object? weather = freezed,
  }) {
    return _then(_$_HourlyWeather(
      dt: dt == freezed
          ? _value.dt
          : dt // ignore: cast_nullable_to_non_nullable
              as int?,
      temp: temp == freezed
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as double?,
      weather: weather == freezed
          ? _value._weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<Weather>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HourlyWeather with DiagnosticableTreeMixin implements _HourlyWeather {
  const _$_HourlyWeather(
      {@HiveField(0) this.dt,
      @HiveField(1) this.temp,
      @HiveField(2) final List<Weather>? weather})
      : _weather = weather;

  factory _$_HourlyWeather.fromJson(Map<String, dynamic> json) =>
      _$$_HourlyWeatherFromJson(json);

  @override
  @HiveField(0)
  final int? dt;
  @override
  @HiveField(1)
  final double? temp;
  final List<Weather>? _weather;
  @override
  @HiveField(2)
  List<Weather>? get weather {
    final value = _weather;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HourlyWeather(dt: $dt, temp: $temp, weather: $weather)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HourlyWeather'))
      ..add(DiagnosticsProperty('dt', dt))
      ..add(DiagnosticsProperty('temp', temp))
      ..add(DiagnosticsProperty('weather', weather));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HourlyWeather &&
            const DeepCollectionEquality().equals(other.dt, dt) &&
            const DeepCollectionEquality().equals(other.temp, temp) &&
            const DeepCollectionEquality().equals(other._weather, _weather));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(dt),
      const DeepCollectionEquality().hash(temp),
      const DeepCollectionEquality().hash(_weather));

  @JsonKey(ignore: true)
  @override
  _$$_HourlyWeatherCopyWith<_$_HourlyWeather> get copyWith =>
      __$$_HourlyWeatherCopyWithImpl<_$_HourlyWeather>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HourlyWeatherToJson(
      this,
    );
  }
}

abstract class _HourlyWeather implements HourlyWeather {
  const factory _HourlyWeather(
      {@HiveField(0) final int? dt,
      @HiveField(1) final double? temp,
      @HiveField(2) final List<Weather>? weather}) = _$_HourlyWeather;

  factory _HourlyWeather.fromJson(Map<String, dynamic> json) =
      _$_HourlyWeather.fromJson;

  @override
  @HiveField(0)
  int? get dt;
  @override
  @HiveField(1)
  double? get temp;
  @override
  @HiveField(2)
  List<Weather>? get weather;
  @override
  @JsonKey(ignore: true)
  _$$_HourlyWeatherCopyWith<_$_HourlyWeather> get copyWith =>
      throw _privateConstructorUsedError;
}
