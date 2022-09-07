// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'city.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CityModel _$CityModelFromJson(Map<String, dynamic> json) {
  return _CityModel.fromJson(json);
}

/// @nodoc
mixin _$CityModel {
  @HiveField(0)
  double? get latitude => throw _privateConstructorUsedError;
  @HiveField(1)
  double? get longitude => throw _privateConstructorUsedError;
  @HiveField(2)
  int? get cityId => throw _privateConstructorUsedError;
  @HiveField(3)
  String? get name => throw _privateConstructorUsedError;
  @HiveField(4)
  int? get temp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CityModelCopyWith<CityModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CityModelCopyWith<$Res> {
  factory $CityModelCopyWith(CityModel value, $Res Function(CityModel) then) =
      _$CityModelCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) double? latitude,
      @HiveField(1) double? longitude,
      @HiveField(2) int? cityId,
      @HiveField(3) String? name,
      @HiveField(4) int? temp});
}

/// @nodoc
class _$CityModelCopyWithImpl<$Res> implements $CityModelCopyWith<$Res> {
  _$CityModelCopyWithImpl(this._value, this._then);

  final CityModel _value;
  // ignore: unused_field
  final $Res Function(CityModel) _then;

  @override
  $Res call({
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? cityId = freezed,
    Object? name = freezed,
    Object? temp = freezed,
  }) {
    return _then(_value.copyWith(
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      cityId: cityId == freezed
          ? _value.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      temp: temp == freezed
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$$_CityModelCopyWith<$Res> implements $CityModelCopyWith<$Res> {
  factory _$$_CityModelCopyWith(
          _$_CityModel value, $Res Function(_$_CityModel) then) =
      __$$_CityModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) double? latitude,
      @HiveField(1) double? longitude,
      @HiveField(2) int? cityId,
      @HiveField(3) String? name,
      @HiveField(4) int? temp});
}

/// @nodoc
class __$$_CityModelCopyWithImpl<$Res> extends _$CityModelCopyWithImpl<$Res>
    implements _$$_CityModelCopyWith<$Res> {
  __$$_CityModelCopyWithImpl(
      _$_CityModel _value, $Res Function(_$_CityModel) _then)
      : super(_value, (v) => _then(v as _$_CityModel));

  @override
  _$_CityModel get _value => super._value as _$_CityModel;

  @override
  $Res call({
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? cityId = freezed,
    Object? name = freezed,
    Object? temp = freezed,
  }) {
    return _then(_$_CityModel(
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      cityId: cityId == freezed
          ? _value.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      temp: temp == freezed
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CityModel with DiagnosticableTreeMixin implements _CityModel {
  const _$_CityModel(
      {@HiveField(0) required this.latitude,
      @HiveField(1) required this.longitude,
      @HiveField(2) required this.cityId,
      @HiveField(3) required this.name,
      @HiveField(4) this.temp});

  factory _$_CityModel.fromJson(Map<String, dynamic> json) =>
      _$$_CityModelFromJson(json);

  @override
  @HiveField(0)
  final double? latitude;
  @override
  @HiveField(1)
  final double? longitude;
  @override
  @HiveField(2)
  final int? cityId;
  @override
  @HiveField(3)
  final String? name;
  @override
  @HiveField(4)
  final int? temp;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CityModel(latitude: $latitude, longitude: $longitude, cityId: $cityId, name: $name, temp: $temp)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CityModel'))
      ..add(DiagnosticsProperty('latitude', latitude))
      ..add(DiagnosticsProperty('longitude', longitude))
      ..add(DiagnosticsProperty('cityId', cityId))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('temp', temp));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CityModel &&
            const DeepCollectionEquality().equals(other.latitude, latitude) &&
            const DeepCollectionEquality().equals(other.longitude, longitude) &&
            const DeepCollectionEquality().equals(other.cityId, cityId) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.temp, temp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(latitude),
      const DeepCollectionEquality().hash(longitude),
      const DeepCollectionEquality().hash(cityId),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(temp));

  @JsonKey(ignore: true)
  @override
  _$$_CityModelCopyWith<_$_CityModel> get copyWith =>
      __$$_CityModelCopyWithImpl<_$_CityModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CityModelToJson(
      this,
    );
  }
}

abstract class _CityModel implements CityModel {
  const factory _CityModel(
      {@HiveField(0) required final double? latitude,
      @HiveField(1) required final double? longitude,
      @HiveField(2) required final int? cityId,
      @HiveField(3) required final String? name,
      @HiveField(4) final int? temp}) = _$_CityModel;

  factory _CityModel.fromJson(Map<String, dynamic> json) =
      _$_CityModel.fromJson;

  @override
  @HiveField(0)
  double? get latitude;
  @override
  @HiveField(1)
  double? get longitude;
  @override
  @HiveField(2)
  int? get cityId;
  @override
  @HiveField(3)
  String? get name;
  @override
  @HiveField(4)
  int? get temp;
  @override
  @JsonKey(ignore: true)
  _$$_CityModelCopyWith<_$_CityModel> get copyWith =>
      throw _privateConstructorUsedError;
}
