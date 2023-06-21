import 'package:flutter/material.dart';
import 'package:fluttertaskapp/domain/model/user.dart';
import 'package:fluttertaskapp/presentation/widgets/user_item_widget.dart';
import 'package:go_router/go_router.dart';

class UserListView extends StatelessWidget {
  final List<User> users;

  const UserListView({Key? key, required this.users}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        final user = users[index];
        return UserItemWidget(
          user: user,
          onTap: () {
            context.go('/details', extra: user);
          },
        );
      },
      separatorBuilder: (context, index) {
        return Divider(
          height: 1.0,
          thickness: 1.0,
          color: Colors.grey.shade300,
        );
      },
      itemCount: users.length,
    );
  }
}
