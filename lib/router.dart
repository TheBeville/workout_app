import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:workout_app/views/settings_view.dart';
import 'package:workout_app/views/workout_session.dart';

final GoRouter _router = GoRouter(
  routes: [
    GoRoute(
      path: '/session',
      builder: (BuildContext context, GoRouterState state) =>
          const WorkoutSession(),
    ),
    GoRoute(
      path: '/settings',
      builder: (BuildContext context, GoRouterState state) => const Settings(),
    ),
  ],
);
