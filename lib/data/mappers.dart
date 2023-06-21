import 'package:fluttertaskapp/data/dto/user_dto.dart';
import 'package:fluttertaskapp/domain/model/user.dart';
import 'package:fluttertaskapp/domain/util/app_utils.dart';

class Mappers {
  static User toUser(UserDTO u) {
    return User(
      id: u.id,
      name: u.name,
      username: u.name,
      email: u.email,
      phone: u.phone,
      website: u.website,
      street: u.address?.street,
      suite: u.address?.suite,
      city: u.address?.city,
      zipcode: u.address?.zipcode,
      profile: profileImage,
    );
  }
}
