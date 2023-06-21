import 'package:fluttertaskapp/data/mappers.dart';
import 'package:fluttertaskapp/domain/model/user.dart';
import 'package:fluttertaskapp/domain/networking/api_result.dart';
import 'package:fluttertaskapp/domain/repository/user_repository.dart';
import 'package:fluttertaskapp/domain/util/usecase.dart';

class GetUserUseCase extends UseCase<ApiResult<List<User>>> {
  final UserRepository repository;

  GetUserUseCase(this.repository);

  @override
  Future<ApiResult<List<User>>> call() async {
    final response = await repository.fetchUsers();
    return response.when(
      success: (result) {
        final users = result.map(Mappers.toUser).toList();
        return ApiResult.success(users);
      },
      failure: ApiResult.failure,
    );
  }
}
