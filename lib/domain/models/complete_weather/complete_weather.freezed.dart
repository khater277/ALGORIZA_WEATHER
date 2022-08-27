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

CompleteWeather _$CompleteWeatherFromJson(Map<String, dynamic> json) {
  return _CompleteWeather.fromJson(json);
}

/// @nodoc
mixin _$CompleteWeather {
  double? get lat => throw _privateConstructorUsedError;
  double? get lon => throw _privateConstructorUsedError;
  String? get timezone => throw _privateConstructorUsedError;
  int? get timezone_offset => throw _privateConstructorUsedError;
  CurrentWeather? get current => throw _privateConstructorUsedError;
  List<HourlyWeather>? get hourly => throw _privateConstructorUsedError;
  List<DailyWeather>? get daily => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CompleteWeatherCopyWith<CompleteWeather> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompleteWeatherCopyWith<$Res> {
  factory $CompleteWeatherCopyWith(
          CompleteWeather value, $Res Function(CompleteWeather) then) =
      _$CompleteWeatherCopyWithImpl<$Res>;
  $Res call(
      {double? lat,
      double? lon,
      String? timezone,
      int? timezone_offset,
      CurrentWeather? current,
      List<HourlyWeather>? hourly,
      List<DailyWeather>? daily});

  $CurrentWeatherCopyWith<$Res>? get current;
}

/// @nodoc
class _$CompleteWeatherCopyWithImpl<$Res>
    implements $CompleteWeatherCopyWith<$Res> {
  _$CompleteWeatherCopyWithImpl(this._value, this._then);

  final CompleteWeather _value;
  // ignore: unused_field
  final $Res Function(CompleteWeather) _then;

  @override
  $Res call({
    Object? lat = freezed,
    Object? lon = freezed,
    Object? timezone = freezed,
    Object? timezone_offset = freezed,
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
      timezone: timezone == freezed
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String?,
      timezone_offset: timezone_offset == freezed
          ? _value.timezone_offset
          : timezone_offset // ignore: cast_nullable_to_non_nullable
              as int?,
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
abstract class _$$_CompleteWeatherCopyWith<$Res>
    implements $CompleteWeatherCopyWith<$Res> {
  factory _$$_CompleteWeatherCopyWith(
          _$_CompleteWeather value, $Res Function(_$_CompleteWeather) then) =
      __$$_CompleteWeatherCopyWithImpl<$Res>;
  @override
  $Res call(
      {double? lat,
      double? lon,
      String? timezone,
      int? timezone_offset,
      CurrentWeather? current,
      List<HourlyWeather>? hourly,
      List<DailyWeather>? daily});

  @override
  $CurrentWeatherCopyWith<$Res>? get current;
}

/// @nodoc
class __$$_CompleteWeatherCopyWithImpl<$Res>
    extends _$CompleteWeatherCopyWithImpl<$Res>
    implements _$$_CompleteWeatherCopyWith<$Res> {
  __$$_CompleteWeatherCopyWithImpl(
      _$_CompleteWeather _value, $Res Function(_$_CompleteWeather) _then)
      : super(_value, (v) => _then(v as _$_CompleteWeather));

  @override
  _$_CompleteWeather get _value => super._value as _$_CompleteWeather;

  @override
  $Res call({
    Object? lat = freezed,
    Object? lon = freezed,
    Object? timezone = freezed,
    Object? timezone_offset = freezed,
    Object? current = freezed,
    Object? hourly = freezed,
    Object? daily = freezed,
  }) {
    return _then(_$_CompleteWeather(
      lat: lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double?,
      lon: lon == freezed
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double?,
      timezone: timezone == freezed
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String?,
      timezone_offset: timezone_offset == freezed
          ? _value.timezone_offset
          : timezone_offset // ignore: cast_nullable_to_non_nullable
              as int?,
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
class _$_CompleteWeather
    with DiagnosticableTreeMixin
    implements _CompleteWeather {
  const _$_CompleteWeather(
      {this.lat,
      this.lon,
      this.timezone,
      this.timezone_offset,
      this.current,
      final List<HourlyWeather>? hourly,
      final List<DailyWeather>? daily})
      : _hourly = hourly,
        _daily = daily;

  factory _$_CompleteWeather.fromJson(Map<String, dynamic> json) =>
      _$$_CompleteWeatherFromJson(json);

  @override
  final double? lat;
  @override
  final double? lon;
  @override
  final String? timezone;
  @override
  final int? timezone_offset;
  @override
  final CurrentWeather? current;
  final List<HourlyWeather>? _hourly;
  @override
  List<HourlyWeather>? get hourly {
    final value = _hourly;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<DailyWeather>? _daily;
  @override
  List<DailyWeather>? get daily {
    final value = _daily;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CompleteWeather(lat: $lat, lon: $lon, timezone: $timezone, timezone_offset: $timezone_offset, current: $current, hourly: $hourly, daily: $daily)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CompleteWeather'))
      ..add(DiagnosticsProperty('lat', lat))
      ..add(DiagnosticsProperty('lon', lon))
      ..add(DiagnosticsProperty('timezone', timezone))
      ..add(DiagnosticsProperty('timezone_offset', timezone_offset))
      ..add(DiagnosticsProperty('current', current))
      ..add(DiagnosticsProperty('hourly', hourly))
      ..add(DiagnosticsProperty('daily', daily));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CompleteWeather &&
            const DeepCollectionEquality().equals(other.lat, lat) &&
            const DeepCollectionEquality().equals(other.lon, lon) &&
            const DeepCollectionEquality().equals(other.timezone, timezone) &&
            const DeepCollectionEquality()
                .equals(other.timezone_offset, timezone_offset) &&
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
      const DeepCollectionEquality().hash(timezone),
      const DeepCollectionEquality().hash(timezone_offset),
      const DeepCollectionEquality().hash(current),
      const DeepCollectionEquality().hash(_hourly),
      const DeepCollectionEquality().hash(_daily));

  @JsonKey(ignore: true)
  @override
  _$$_CompleteWeatherCopyWith<_$_CompleteWeather> get copyWith =>
      __$$_CompleteWeatherCopyWithImpl<_$_CompleteWeather>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CompleteWeatherToJson(
      this,
    );
  }
}

abstract class _CompleteWeather implements CompleteWeather {
  const factory _CompleteWeather(
      {final double? lat,
      final double? lon,
      final String? timezone,
      final int? timezone_offset,
      final CurrentWeather? current,
      final List<HourlyWeather>? hourly,
      final List<DailyWeather>? daily}) = _$_CompleteWeather;

  factory _CompleteWeather.fromJson(Map<String, dynamic> json) =
      _$_CompleteWeather.fromJson;

  @override
  double? get lat;
  @override
  double? get lon;
  @override
  String? get timezone;
  @override
  int? get timezone_offset;
  @override
  CurrentWeather? get current;
  @override
  List<HourlyWeather>? get hourly;
  @override
  List<DailyWeather>? get daily;
  @override
  @JsonKey(ignore: true)
  _$$_CompleteWeatherCopyWith<_$_CompleteWeather> get copyWith =>
      throw _privateConstructorUsedError;
}
