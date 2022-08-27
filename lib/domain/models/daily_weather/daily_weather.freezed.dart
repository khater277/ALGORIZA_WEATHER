// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'daily_weather.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DailyWeather _$DailyWeatherFromJson(Map<String, dynamic> json) {
  return _DailyWeather.fromJson(json);
}

/// @nodoc
mixin _$DailyWeather {
  int? get dt => throw _privateConstructorUsedError;
  int? get sunrise => throw _privateConstructorUsedError;
  int? get sunset => throw _privateConstructorUsedError;
  int? get moonrise => throw _privateConstructorUsedError;
  int? get moonset => throw _privateConstructorUsedError;
  double? get moon_phase => throw _privateConstructorUsedError;
  Tempretrue? get temp => throw _privateConstructorUsedError;
  FeelsLike? get feels_like => throw _privateConstructorUsedError;
  int? get pressure => throw _privateConstructorUsedError;
  int? get humidity => throw _privateConstructorUsedError;
  double? get dew_point => throw _privateConstructorUsedError;
  double? get wind_speed => throw _privateConstructorUsedError;
  int? get wind_deg => throw _privateConstructorUsedError;
  double? get wind_gust => throw _privateConstructorUsedError;
  List<Weather>? get weather => throw _privateConstructorUsedError;
  int? get clouds => throw _privateConstructorUsedError;
  double? get pop => throw _privateConstructorUsedError;
  double? get rain => throw _privateConstructorUsedError;
  double? get uvi => throw _privateConstructorUsedError;

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
      {int? dt,
      int? sunrise,
      int? sunset,
      int? moonrise,
      int? moonset,
      double? moon_phase,
      Tempretrue? temp,
      FeelsLike? feels_like,
      int? pressure,
      int? humidity,
      double? dew_point,
      double? wind_speed,
      int? wind_deg,
      double? wind_gust,
      List<Weather>? weather,
      int? clouds,
      double? pop,
      double? rain,
      double? uvi});

  $TempretrueCopyWith<$Res>? get temp;
  $FeelsLikeCopyWith<$Res>? get feels_like;
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
    Object? sunrise = freezed,
    Object? sunset = freezed,
    Object? moonrise = freezed,
    Object? moonset = freezed,
    Object? moon_phase = freezed,
    Object? temp = freezed,
    Object? feels_like = freezed,
    Object? pressure = freezed,
    Object? humidity = freezed,
    Object? dew_point = freezed,
    Object? wind_speed = freezed,
    Object? wind_deg = freezed,
    Object? wind_gust = freezed,
    Object? weather = freezed,
    Object? clouds = freezed,
    Object? pop = freezed,
    Object? rain = freezed,
    Object? uvi = freezed,
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
      moonrise: moonrise == freezed
          ? _value.moonrise
          : moonrise // ignore: cast_nullable_to_non_nullable
              as int?,
      moonset: moonset == freezed
          ? _value.moonset
          : moonset // ignore: cast_nullable_to_non_nullable
              as int?,
      moon_phase: moon_phase == freezed
          ? _value.moon_phase
          : moon_phase // ignore: cast_nullable_to_non_nullable
              as double?,
      temp: temp == freezed
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as Tempretrue?,
      feels_like: feels_like == freezed
          ? _value.feels_like
          : feels_like // ignore: cast_nullable_to_non_nullable
              as FeelsLike?,
      pressure: pressure == freezed
          ? _value.pressure
          : pressure // ignore: cast_nullable_to_non_nullable
              as int?,
      humidity: humidity == freezed
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int?,
      dew_point: dew_point == freezed
          ? _value.dew_point
          : dew_point // ignore: cast_nullable_to_non_nullable
              as double?,
      wind_speed: wind_speed == freezed
          ? _value.wind_speed
          : wind_speed // ignore: cast_nullable_to_non_nullable
              as double?,
      wind_deg: wind_deg == freezed
          ? _value.wind_deg
          : wind_deg // ignore: cast_nullable_to_non_nullable
              as int?,
      wind_gust: wind_gust == freezed
          ? _value.wind_gust
          : wind_gust // ignore: cast_nullable_to_non_nullable
              as double?,
      weather: weather == freezed
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<Weather>?,
      clouds: clouds == freezed
          ? _value.clouds
          : clouds // ignore: cast_nullable_to_non_nullable
              as int?,
      pop: pop == freezed
          ? _value.pop
          : pop // ignore: cast_nullable_to_non_nullable
              as double?,
      rain: rain == freezed
          ? _value.rain
          : rain // ignore: cast_nullable_to_non_nullable
              as double?,
      uvi: uvi == freezed
          ? _value.uvi
          : uvi // ignore: cast_nullable_to_non_nullable
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

  @override
  $FeelsLikeCopyWith<$Res>? get feels_like {
    if (_value.feels_like == null) {
      return null;
    }

    return $FeelsLikeCopyWith<$Res>(_value.feels_like!, (value) {
      return _then(_value.copyWith(feels_like: value));
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
      {int? dt,
      int? sunrise,
      int? sunset,
      int? moonrise,
      int? moonset,
      double? moon_phase,
      Tempretrue? temp,
      FeelsLike? feels_like,
      int? pressure,
      int? humidity,
      double? dew_point,
      double? wind_speed,
      int? wind_deg,
      double? wind_gust,
      List<Weather>? weather,
      int? clouds,
      double? pop,
      double? rain,
      double? uvi});

  @override
  $TempretrueCopyWith<$Res>? get temp;
  @override
  $FeelsLikeCopyWith<$Res>? get feels_like;
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
    Object? sunrise = freezed,
    Object? sunset = freezed,
    Object? moonrise = freezed,
    Object? moonset = freezed,
    Object? moon_phase = freezed,
    Object? temp = freezed,
    Object? feels_like = freezed,
    Object? pressure = freezed,
    Object? humidity = freezed,
    Object? dew_point = freezed,
    Object? wind_speed = freezed,
    Object? wind_deg = freezed,
    Object? wind_gust = freezed,
    Object? weather = freezed,
    Object? clouds = freezed,
    Object? pop = freezed,
    Object? rain = freezed,
    Object? uvi = freezed,
  }) {
    return _then(_$_DailyWeather(
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
      moonrise: moonrise == freezed
          ? _value.moonrise
          : moonrise // ignore: cast_nullable_to_non_nullable
              as int?,
      moonset: moonset == freezed
          ? _value.moonset
          : moonset // ignore: cast_nullable_to_non_nullable
              as int?,
      moon_phase: moon_phase == freezed
          ? _value.moon_phase
          : moon_phase // ignore: cast_nullable_to_non_nullable
              as double?,
      temp: temp == freezed
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as Tempretrue?,
      feels_like: feels_like == freezed
          ? _value.feels_like
          : feels_like // ignore: cast_nullable_to_non_nullable
              as FeelsLike?,
      pressure: pressure == freezed
          ? _value.pressure
          : pressure // ignore: cast_nullable_to_non_nullable
              as int?,
      humidity: humidity == freezed
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int?,
      dew_point: dew_point == freezed
          ? _value.dew_point
          : dew_point // ignore: cast_nullable_to_non_nullable
              as double?,
      wind_speed: wind_speed == freezed
          ? _value.wind_speed
          : wind_speed // ignore: cast_nullable_to_non_nullable
              as double?,
      wind_deg: wind_deg == freezed
          ? _value.wind_deg
          : wind_deg // ignore: cast_nullable_to_non_nullable
              as int?,
      wind_gust: wind_gust == freezed
          ? _value.wind_gust
          : wind_gust // ignore: cast_nullable_to_non_nullable
              as double?,
      weather: weather == freezed
          ? _value._weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<Weather>?,
      clouds: clouds == freezed
          ? _value.clouds
          : clouds // ignore: cast_nullable_to_non_nullable
              as int?,
      pop: pop == freezed
          ? _value.pop
          : pop // ignore: cast_nullable_to_non_nullable
              as double?,
      rain: rain == freezed
          ? _value.rain
          : rain // ignore: cast_nullable_to_non_nullable
              as double?,
      uvi: uvi == freezed
          ? _value.uvi
          : uvi // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DailyWeather with DiagnosticableTreeMixin implements _DailyWeather {
  const _$_DailyWeather(
      {this.dt,
      this.sunrise,
      this.sunset,
      this.moonrise,
      this.moonset,
      this.moon_phase,
      this.temp,
      this.feels_like,
      this.pressure,
      this.humidity,
      this.dew_point,
      this.wind_speed,
      this.wind_deg,
      this.wind_gust,
      final List<Weather>? weather,
      this.clouds,
      this.pop,
      this.rain,
      this.uvi})
      : _weather = weather;

  factory _$_DailyWeather.fromJson(Map<String, dynamic> json) =>
      _$$_DailyWeatherFromJson(json);

  @override
  final int? dt;
  @override
  final int? sunrise;
  @override
  final int? sunset;
  @override
  final int? moonrise;
  @override
  final int? moonset;
  @override
  final double? moon_phase;
  @override
  final Tempretrue? temp;
  @override
  final FeelsLike? feels_like;
  @override
  final int? pressure;
  @override
  final int? humidity;
  @override
  final double? dew_point;
  @override
  final double? wind_speed;
  @override
  final int? wind_deg;
  @override
  final double? wind_gust;
  final List<Weather>? _weather;
  @override
  List<Weather>? get weather {
    final value = _weather;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? clouds;
  @override
  final double? pop;
  @override
  final double? rain;
  @override
  final double? uvi;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DailyWeather(dt: $dt, sunrise: $sunrise, sunset: $sunset, moonrise: $moonrise, moonset: $moonset, moon_phase: $moon_phase, temp: $temp, feels_like: $feels_like, pressure: $pressure, humidity: $humidity, dew_point: $dew_point, wind_speed: $wind_speed, wind_deg: $wind_deg, wind_gust: $wind_gust, weather: $weather, clouds: $clouds, pop: $pop, rain: $rain, uvi: $uvi)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DailyWeather'))
      ..add(DiagnosticsProperty('dt', dt))
      ..add(DiagnosticsProperty('sunrise', sunrise))
      ..add(DiagnosticsProperty('sunset', sunset))
      ..add(DiagnosticsProperty('moonrise', moonrise))
      ..add(DiagnosticsProperty('moonset', moonset))
      ..add(DiagnosticsProperty('moon_phase', moon_phase))
      ..add(DiagnosticsProperty('temp', temp))
      ..add(DiagnosticsProperty('feels_like', feels_like))
      ..add(DiagnosticsProperty('pressure', pressure))
      ..add(DiagnosticsProperty('humidity', humidity))
      ..add(DiagnosticsProperty('dew_point', dew_point))
      ..add(DiagnosticsProperty('wind_speed', wind_speed))
      ..add(DiagnosticsProperty('wind_deg', wind_deg))
      ..add(DiagnosticsProperty('wind_gust', wind_gust))
      ..add(DiagnosticsProperty('weather', weather))
      ..add(DiagnosticsProperty('clouds', clouds))
      ..add(DiagnosticsProperty('pop', pop))
      ..add(DiagnosticsProperty('rain', rain))
      ..add(DiagnosticsProperty('uvi', uvi));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DailyWeather &&
            const DeepCollectionEquality().equals(other.dt, dt) &&
            const DeepCollectionEquality().equals(other.sunrise, sunrise) &&
            const DeepCollectionEquality().equals(other.sunset, sunset) &&
            const DeepCollectionEquality().equals(other.moonrise, moonrise) &&
            const DeepCollectionEquality().equals(other.moonset, moonset) &&
            const DeepCollectionEquality()
                .equals(other.moon_phase, moon_phase) &&
            const DeepCollectionEquality().equals(other.temp, temp) &&
            const DeepCollectionEquality()
                .equals(other.feels_like, feels_like) &&
            const DeepCollectionEquality().equals(other.pressure, pressure) &&
            const DeepCollectionEquality().equals(other.humidity, humidity) &&
            const DeepCollectionEquality().equals(other.dew_point, dew_point) &&
            const DeepCollectionEquality()
                .equals(other.wind_speed, wind_speed) &&
            const DeepCollectionEquality().equals(other.wind_deg, wind_deg) &&
            const DeepCollectionEquality().equals(other.wind_gust, wind_gust) &&
            const DeepCollectionEquality().equals(other._weather, _weather) &&
            const DeepCollectionEquality().equals(other.clouds, clouds) &&
            const DeepCollectionEquality().equals(other.pop, pop) &&
            const DeepCollectionEquality().equals(other.rain, rain) &&
            const DeepCollectionEquality().equals(other.uvi, uvi));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(dt),
        const DeepCollectionEquality().hash(sunrise),
        const DeepCollectionEquality().hash(sunset),
        const DeepCollectionEquality().hash(moonrise),
        const DeepCollectionEquality().hash(moonset),
        const DeepCollectionEquality().hash(moon_phase),
        const DeepCollectionEquality().hash(temp),
        const DeepCollectionEquality().hash(feels_like),
        const DeepCollectionEquality().hash(pressure),
        const DeepCollectionEquality().hash(humidity),
        const DeepCollectionEquality().hash(dew_point),
        const DeepCollectionEquality().hash(wind_speed),
        const DeepCollectionEquality().hash(wind_deg),
        const DeepCollectionEquality().hash(wind_gust),
        const DeepCollectionEquality().hash(_weather),
        const DeepCollectionEquality().hash(clouds),
        const DeepCollectionEquality().hash(pop),
        const DeepCollectionEquality().hash(rain),
        const DeepCollectionEquality().hash(uvi)
      ]);

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
      {final int? dt,
      final int? sunrise,
      final int? sunset,
      final int? moonrise,
      final int? moonset,
      final double? moon_phase,
      final Tempretrue? temp,
      final FeelsLike? feels_like,
      final int? pressure,
      final int? humidity,
      final double? dew_point,
      final double? wind_speed,
      final int? wind_deg,
      final double? wind_gust,
      final List<Weather>? weather,
      final int? clouds,
      final double? pop,
      final double? rain,
      final double? uvi}) = _$_DailyWeather;

  factory _DailyWeather.fromJson(Map<String, dynamic> json) =
      _$_DailyWeather.fromJson;

  @override
  int? get dt;
  @override
  int? get sunrise;
  @override
  int? get sunset;
  @override
  int? get moonrise;
  @override
  int? get moonset;
  @override
  double? get moon_phase;
  @override
  Tempretrue? get temp;
  @override
  FeelsLike? get feels_like;
  @override
  int? get pressure;
  @override
  int? get humidity;
  @override
  double? get dew_point;
  @override
  double? get wind_speed;
  @override
  int? get wind_deg;
  @override
  double? get wind_gust;
  @override
  List<Weather>? get weather;
  @override
  int? get clouds;
  @override
  double? get pop;
  @override
  double? get rain;
  @override
  double? get uvi;
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
  double? get day => throw _privateConstructorUsedError;
  double? get min => throw _privateConstructorUsedError;
  double? get max => throw _privateConstructorUsedError;
  double? get night => throw _privateConstructorUsedError;
  double? get eve => throw _privateConstructorUsedError;
  double? get morn => throw _privateConstructorUsedError;

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
  $Res call(
      {double? day,
      double? min,
      double? max,
      double? night,
      double? eve,
      double? morn});
}

/// @nodoc
class _$TempretrueCopyWithImpl<$Res> implements $TempretrueCopyWith<$Res> {
  _$TempretrueCopyWithImpl(this._value, this._then);

  final Tempretrue _value;
  // ignore: unused_field
  final $Res Function(Tempretrue) _then;

  @override
  $Res call({
    Object? day = freezed,
    Object? min = freezed,
    Object? max = freezed,
    Object? night = freezed,
    Object? eve = freezed,
    Object? morn = freezed,
  }) {
    return _then(_value.copyWith(
      day: day == freezed
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as double?,
      min: min == freezed
          ? _value.min
          : min // ignore: cast_nullable_to_non_nullable
              as double?,
      max: max == freezed
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as double?,
      night: night == freezed
          ? _value.night
          : night // ignore: cast_nullable_to_non_nullable
              as double?,
      eve: eve == freezed
          ? _value.eve
          : eve // ignore: cast_nullable_to_non_nullable
              as double?,
      morn: morn == freezed
          ? _value.morn
          : morn // ignore: cast_nullable_to_non_nullable
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
  $Res call(
      {double? day,
      double? min,
      double? max,
      double? night,
      double? eve,
      double? morn});
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
    Object? day = freezed,
    Object? min = freezed,
    Object? max = freezed,
    Object? night = freezed,
    Object? eve = freezed,
    Object? morn = freezed,
  }) {
    return _then(_$_Tempretrue(
      day: day == freezed
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as double?,
      min: min == freezed
          ? _value.min
          : min // ignore: cast_nullable_to_non_nullable
              as double?,
      max: max == freezed
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as double?,
      night: night == freezed
          ? _value.night
          : night // ignore: cast_nullable_to_non_nullable
              as double?,
      eve: eve == freezed
          ? _value.eve
          : eve // ignore: cast_nullable_to_non_nullable
              as double?,
      morn: morn == freezed
          ? _value.morn
          : morn // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Tempretrue with DiagnosticableTreeMixin implements _Tempretrue {
  const _$_Tempretrue(
      {this.day, this.min, this.max, this.night, this.eve, this.morn});

  factory _$_Tempretrue.fromJson(Map<String, dynamic> json) =>
      _$$_TempretrueFromJson(json);

  @override
  final double? day;
  @override
  final double? min;
  @override
  final double? max;
  @override
  final double? night;
  @override
  final double? eve;
  @override
  final double? morn;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Tempretrue(day: $day, min: $min, max: $max, night: $night, eve: $eve, morn: $morn)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Tempretrue'))
      ..add(DiagnosticsProperty('day', day))
      ..add(DiagnosticsProperty('min', min))
      ..add(DiagnosticsProperty('max', max))
      ..add(DiagnosticsProperty('night', night))
      ..add(DiagnosticsProperty('eve', eve))
      ..add(DiagnosticsProperty('morn', morn));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Tempretrue &&
            const DeepCollectionEquality().equals(other.day, day) &&
            const DeepCollectionEquality().equals(other.min, min) &&
            const DeepCollectionEquality().equals(other.max, max) &&
            const DeepCollectionEquality().equals(other.night, night) &&
            const DeepCollectionEquality().equals(other.eve, eve) &&
            const DeepCollectionEquality().equals(other.morn, morn));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(day),
      const DeepCollectionEquality().hash(min),
      const DeepCollectionEquality().hash(max),
      const DeepCollectionEquality().hash(night),
      const DeepCollectionEquality().hash(eve),
      const DeepCollectionEquality().hash(morn));

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
      {final double? day,
      final double? min,
      final double? max,
      final double? night,
      final double? eve,
      final double? morn}) = _$_Tempretrue;

  factory _Tempretrue.fromJson(Map<String, dynamic> json) =
      _$_Tempretrue.fromJson;

  @override
  double? get day;
  @override
  double? get min;
  @override
  double? get max;
  @override
  double? get night;
  @override
  double? get eve;
  @override
  double? get morn;
  @override
  @JsonKey(ignore: true)
  _$$_TempretrueCopyWith<_$_Tempretrue> get copyWith =>
      throw _privateConstructorUsedError;
}

FeelsLike _$FeelsLikeFromJson(Map<String, dynamic> json) {
  return _FeelsLike.fromJson(json);
}

/// @nodoc
mixin _$FeelsLike {
  double? get day => throw _privateConstructorUsedError;
  double? get night => throw _privateConstructorUsedError;
  double? get eve => throw _privateConstructorUsedError;
  double? get morn => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FeelsLikeCopyWith<FeelsLike> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeelsLikeCopyWith<$Res> {
  factory $FeelsLikeCopyWith(FeelsLike value, $Res Function(FeelsLike) then) =
      _$FeelsLikeCopyWithImpl<$Res>;
  $Res call({double? day, double? night, double? eve, double? morn});
}

/// @nodoc
class _$FeelsLikeCopyWithImpl<$Res> implements $FeelsLikeCopyWith<$Res> {
  _$FeelsLikeCopyWithImpl(this._value, this._then);

  final FeelsLike _value;
  // ignore: unused_field
  final $Res Function(FeelsLike) _then;

  @override
  $Res call({
    Object? day = freezed,
    Object? night = freezed,
    Object? eve = freezed,
    Object? morn = freezed,
  }) {
    return _then(_value.copyWith(
      day: day == freezed
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as double?,
      night: night == freezed
          ? _value.night
          : night // ignore: cast_nullable_to_non_nullable
              as double?,
      eve: eve == freezed
          ? _value.eve
          : eve // ignore: cast_nullable_to_non_nullable
              as double?,
      morn: morn == freezed
          ? _value.morn
          : morn // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
abstract class _$$_FeelsLikeCopyWith<$Res> implements $FeelsLikeCopyWith<$Res> {
  factory _$$_FeelsLikeCopyWith(
          _$_FeelsLike value, $Res Function(_$_FeelsLike) then) =
      __$$_FeelsLikeCopyWithImpl<$Res>;
  @override
  $Res call({double? day, double? night, double? eve, double? morn});
}

/// @nodoc
class __$$_FeelsLikeCopyWithImpl<$Res> extends _$FeelsLikeCopyWithImpl<$Res>
    implements _$$_FeelsLikeCopyWith<$Res> {
  __$$_FeelsLikeCopyWithImpl(
      _$_FeelsLike _value, $Res Function(_$_FeelsLike) _then)
      : super(_value, (v) => _then(v as _$_FeelsLike));

  @override
  _$_FeelsLike get _value => super._value as _$_FeelsLike;

  @override
  $Res call({
    Object? day = freezed,
    Object? night = freezed,
    Object? eve = freezed,
    Object? morn = freezed,
  }) {
    return _then(_$_FeelsLike(
      day: day == freezed
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as double?,
      night: night == freezed
          ? _value.night
          : night // ignore: cast_nullable_to_non_nullable
              as double?,
      eve: eve == freezed
          ? _value.eve
          : eve // ignore: cast_nullable_to_non_nullable
              as double?,
      morn: morn == freezed
          ? _value.morn
          : morn // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FeelsLike with DiagnosticableTreeMixin implements _FeelsLike {
  const _$_FeelsLike({this.day, this.night, this.eve, this.morn});

  factory _$_FeelsLike.fromJson(Map<String, dynamic> json) =>
      _$$_FeelsLikeFromJson(json);

  @override
  final double? day;
  @override
  final double? night;
  @override
  final double? eve;
  @override
  final double? morn;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FeelsLike(day: $day, night: $night, eve: $eve, morn: $morn)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FeelsLike'))
      ..add(DiagnosticsProperty('day', day))
      ..add(DiagnosticsProperty('night', night))
      ..add(DiagnosticsProperty('eve', eve))
      ..add(DiagnosticsProperty('morn', morn));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FeelsLike &&
            const DeepCollectionEquality().equals(other.day, day) &&
            const DeepCollectionEquality().equals(other.night, night) &&
            const DeepCollectionEquality().equals(other.eve, eve) &&
            const DeepCollectionEquality().equals(other.morn, morn));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(day),
      const DeepCollectionEquality().hash(night),
      const DeepCollectionEquality().hash(eve),
      const DeepCollectionEquality().hash(morn));

  @JsonKey(ignore: true)
  @override
  _$$_FeelsLikeCopyWith<_$_FeelsLike> get copyWith =>
      __$$_FeelsLikeCopyWithImpl<_$_FeelsLike>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FeelsLikeToJson(
      this,
    );
  }
}

abstract class _FeelsLike implements FeelsLike {
  const factory _FeelsLike(
      {final double? day,
      final double? night,
      final double? eve,
      final double? morn}) = _$_FeelsLike;

  factory _FeelsLike.fromJson(Map<String, dynamic> json) =
      _$_FeelsLike.fromJson;

  @override
  double? get day;
  @override
  double? get night;
  @override
  double? get eve;
  @override
  double? get morn;
  @override
  @JsonKey(ignore: true)
  _$$_FeelsLikeCopyWith<_$_FeelsLike> get copyWith =>
      throw _privateConstructorUsedError;
}
