import 'dart:convert';

import 'package:fluttertaskapp/data/dto/user_dto.dart';
import 'package:fluttertaskapp/domain/networking/api_result.dart';
import 'package:fluttertaskapp/domain/repository/user_repository.dart';
import 'package:fluttertaskapp/domain/util/url_constant.dart';
import 'package:http/http.dart' as http;

class UserRepositoryImpl extends UserRepository {
  UserRepositoryImpl();

  @override
  Future<ApiResult<List<UserDTO>>> fetchUsers() async {
    try {
      final response = await http.get(Uri.parse('$kBaseUrl$kUserUrl'));
      if (response.statusCode == 200) {
        List<UserDTO> usersDto = (json.decode(response.body) as List<dynamic>)
            .map((json) => UserDTO.fromJson(json))
            .toList();
        return ApiResult<List<UserDTO>>.success(usersDto);
      } else {
        return const ApiResult<List<UserDTO>>.failure("There's nothing to display");
      }
    } catch (e) {
      if(e.toString().contains('Failed host lookup')){
        return const ApiResult<List<UserDTO>>.failure('No Interest Connection');
      }
      return ApiResult<List<UserDTO>>.failure(e.toString());
    }
  }
}
