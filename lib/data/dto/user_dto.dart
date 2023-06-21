import 'package:fluttertaskapp/domain/model/user.dart';
import 'package:fluttertaskapp/domain/util/app_utils.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_dto.g.dart';

@JsonSerializable()
class UserDTO {
  final int? id;
  final String? name;
  final String? username;
  final String? email;
  final UserAddress? address;
  final String? phone;
  final String? website;
  final UserCompany? company;

  UserDTO({
    this.id,
    this.name,
    this.username,
    this.email,
    this.address,
    this.phone,
    this.website,
    this.company,
  });

  factory UserDTO.fromJson(Map<String, dynamic> json) =>
      _$UserDTOFromJson(json);

  Map<String, dynamic> toJson() => _$UserDTOToJson(this);
}

@JsonSerializable()
class UserAddress {
  final String? street;
  final String? suite;
  final String? city;
  final String? zipcode;
  final UserAddressGeo? geo;

  UserAddress({this.street, this.suite, this.city, this.zipcode, this.geo});

  factory UserAddress.fromJson(Map<String, dynamic> json) =>
      _$UserAddressFromJson(json);

  Map<String, dynamic> toJson() => _$UserAddressToJson(this);
}

@JsonSerializable()
class UserAddressGeo {
  final String? lat;
  final String? lng;

  UserAddressGeo({this.lat, this.lng});

  factory UserAddressGeo.fromJson(Map<String, dynamic> json) =>
      _$UserAddressGeoFromJson(json);

  Map<String, dynamic> toJson() => _$UserAddressGeoToJson(this);
}

@JsonSerializable()
class UserCompany {
  final String? name;
  final String? catchPhrase;
  final String? bs;

  UserCompany({this.name, this.catchPhrase, this.bs});

  factory UserCompany.fromJson(Map<String, dynamic> json) =>
      _$UserCompanyFromJson(json);

  Map<String, dynamic> toJson() => _$UserCompanyToJson(this);
}
