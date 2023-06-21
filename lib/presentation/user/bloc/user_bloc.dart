import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertaskapp/domain/util/usecase.dart';
import 'package:fluttertaskapp/presentation/user/bloc/user_event.dart';
import 'package:fluttertaskapp/presentation/user/bloc/user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> with UseCaseExtension {
  UserBloc() : super(UserInitialState()) {
    on<FetchUsersEvent>((event, emit) async {
      final response = await getUserUseCase();
      response.when(
        success: (result) {
          emit(UserLoaded(users: result));
        },
        failure: (error) {
          emit(UserError(error));
        },
      );
    });
  }
}
