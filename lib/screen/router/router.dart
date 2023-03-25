import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:time_machine_message/screen/view/sign_in/sign_in_page.dart';

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const SignInPage();
      },
    ),
    signIn,
  ],
);

final signIn = GoRoute(
  path: '/sign_in',
  builder: (BuildContext context, GoRouterState state) {
    return const SignInPage();
  },
);
