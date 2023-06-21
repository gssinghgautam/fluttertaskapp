
import 'package:fluttertaskapp/data/repository/user_repository_impl.dart';
import 'package:fluttertaskapp/domain/repository/user_repository.dart';
import 'package:get_it/get_it.dart';

import 'domain/usecase/get_user_usecase.dart';

final locator = GetIt.instance;

void setupLocator(){

  locator.registerSingleton<UserRepository>(UserRepositoryImpl());

  locator.registerSingleton<GetUserUseCase>(GetUserUseCase(locator()));


}