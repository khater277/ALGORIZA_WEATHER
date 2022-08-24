// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'city_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CityModel _$$_CityModelFromJson(Map<String, dynamic> json) => _$_CityModel(
      city: json['city'] as String?,
      lat: json['lat'] as String?,
      lng: json['lng'] as String?,
      country: json['country'] as String?,
      iso2: json['iso2'] as String?,
      adminName: json['adminName'] as String?,
      capital: json['capital'] as String?,
      population: json['population'] as String?,
      populationProper: json['populationProper'] as String?,
    );

Map<String, dynamic> _$$_CityModelToJson(_$_CityModel instance) =>
    <String, dynamic>{
      'city': instance.city,
      'lat': instance.lat,
      'lng': instance.lng,
      'country': instance.country,
      'iso2': instance.iso2,
      'adminName': instance.adminName,
      'capital': instance.capital,
      'population': instance.population,
      'populationProper': instance.populationProper,
    };
