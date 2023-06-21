// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserDTO _$UserDTOFromJson(Map<String, dynamic> json) => UserDTO(
      id: json['id'] as int?,
      name: json['name'] as String?,
      username: json['username'] as String?,
      email: json['email'] as String?,
      address: json['address'] == null
          ? null
          : UserAddress.fromJson(json['address'] as Map<String, dynamic>),
      phone: json['phone'] as String?,
      website: json['website'] as String?,
      company: json['company'] == null
          ? null
          : UserCompany.fromJson(json['company'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserDTOToJson(UserDTO instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'username': instance.username,
      'email': instance.email,
      'address': instance.address,
      'phone': instance.phone,
      'website': instance.website,
      'company': instance.company,
    };

UserAddress _$UserAddressFromJson(Map<String, dynamic> json) => UserAddress(
      street: json['street'] as String?,
      suite: json['suite'] as String?,
      city: json['city'] as String?,
      zipcode: json['zipcode'] as String?,
      geo: json['geo'] == null
          ? null
          : UserAddressGeo.fromJson(json['geo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserAddressToJson(UserAddress instance) =>
    <String, dynamic>{
      'street': instance.street,
      'suite': instance.suite,
      'city': instance.city,
      'zipcode': instance.zipcode,
      'geo': instance.geo,
    };

UserAddressGeo _$UserAddressGeoFromJson(Map<String, dynamic> json) =>
    UserAddressGeo(
      lat: json['lat'] as String?,
      lng: json['lng'] as String?,
    );

Map<String, dynamic> _$UserAddressGeoToJson(UserAddressGeo instance) =>
    <String, dynamic>{
      'lat': instance.lat,
      'lng': instance.lng,
    };

UserCompany _$UserCompanyFromJson(Map<String, dynamic> json) => UserCompany(
      name: json['name'] as String?,
      catchPhrase: json['catchPhrase'] as String?,
      bs: json['bs'] as String?,
    );

Map<String, dynamic> _$UserCompanyToJson(UserCompany instance) =>
    <String, dynamic>{
      'name': instance.name,
      'catchPhrase': instance.catchPhrase,
      'bs': instance.bs,
    };
