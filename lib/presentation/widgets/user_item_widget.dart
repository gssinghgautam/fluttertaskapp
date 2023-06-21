import 'package:flutter/material.dart';
import 'package:fluttertaskapp/domain/model/user.dart';

class UserItemWidget extends StatelessWidget {
  final User user;
  final VoidCallback? onTap;

  const UserItemWidget({Key? key, required this.user, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: CircleAvatar(
        radius: 30.0,
        backgroundImage: NetworkImage(user.profile!),
      ),
      title: Text(user.name ?? ''),
      subtitle: Text(user.email ?? ''),
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 8.0,
        vertical: 4.0,
      ),
    );
  }
}
