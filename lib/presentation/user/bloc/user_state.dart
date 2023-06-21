import 'package:equatable/equatable.dart';
import 'package:fluttertaskapp/domain/model/user.dart';

abstract class UserState {}

class UserInitialState extends UserState {
  @override
  String toString() => "UserInitialState";
}

class UserLoaded extends UserState {
  UserLoaded({required this.users});

  final List<User> users;

  @override
  String toString() => 'UserLoaded { Users: ${users.length}}';
}

class UserError extends UserState {
  final String error;

  UserError(this.error);

  @override
  String toString() => "UserError";
}
