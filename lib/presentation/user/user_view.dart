import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertaskapp/presentation/user/bloc/user_bloc.dart';
import 'package:fluttertaskapp/presentation/user/bloc/user_event.dart';
import 'package:fluttertaskapp/presentation/user/bloc/user_state.dart';
import 'package:fluttertaskapp/presentation/widgets/app_bar_widget.dart';
import 'package:fluttertaskapp/presentation/widgets/app_error_view.dart';
import 'package:fluttertaskapp/presentation/widgets/progress_indicator_widget.dart';

import 'user_list_view.dart';

class UserView extends StatefulWidget {
  const UserView({super.key});

  @override
  State<UserView> createState() => _UserViewState();
}

class _UserViewState extends State<UserView> {
  final UserBloc _userBloc = UserBloc();

  @override
  void initState() {
    super.initState();
    _userBloc.add(FetchUsersEvent());
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => _userBloc,
      child: const Scaffold(
        appBar: AppBarWidget(title: 'User List'),
        body: UserMainView(),
      ),
    );
  }
}

class UserMainView extends StatelessWidget {
  const UserMainView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<UserBloc, UserState>(
      listener: (context, state) {
        if (state is UserError) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.error),
            ),
          );
        }
      },
      child: BlocBuilder<UserBloc, UserState>(
        builder: (context, state) {
          if (state is UserInitialState) {
            return const ProgressIndicatorWidget();
          }

          if (state is UserError) {
            return AppErrorView(
              message: state.error,
              onPressed: () => context.read<UserBloc>().add(FetchUsersEvent()),
            );
          }

          return UserListView(
            users: (state as UserLoaded).users,
          );
        },
      ),
    );
  }
}
