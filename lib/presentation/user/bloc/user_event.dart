abstract class UserEvent {}

class FetchUsersEvent extends UserEvent {
  @override
  String toString() => "FetchUsers";
}
