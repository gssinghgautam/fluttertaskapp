import 'package:fluttertaskapp/data/dto/user_dto.dart';
import 'package:fluttertaskapp/domain/networking/api_result.dart';

abstract class UserRepository{

  Future<ApiResult<List<UserDTO>>> fetchUsers();
}