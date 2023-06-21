import 'package:fluttertaskapp/domain/usecase/get_user_usecase.dart';
import 'package:fluttertaskapp/setup_locator.dart';

abstract class UseCase<T> {
  const UseCase();

  Future<T> call();
}

mixin UseCaseExtension {
  GetUserUseCase get getUserUseCase {
    return locator<GetUserUseCase>();
  }
}
