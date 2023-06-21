import 'package:flutter/material.dart';
import 'package:fluttertaskapp/domain/model/user.dart';
import 'package:fluttertaskapp/presentation/user/user_view.dart';
import 'package:fluttertaskapp/presentation/user_details/user_details.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      pageBuilder: (context, state) => MaterialPage<void>(
        key: state.pageKey,
        restorationId: state.pageKey.value,
        child: const UserView(),
      ),
      routes: <RouteBase>[
        GoRoute(
          path: 'details',
          pageBuilder: (context, state) => MaterialPage<void>(
            key: state.pageKey,
            restorationId: state.pageKey.value,
            child: UserDetails(user: state.extra as User,),
          ),
        ),
      ],
    ),
  ],
);
