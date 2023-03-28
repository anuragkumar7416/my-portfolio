import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio/presentation/about/about_screen.dart';
import 'package:portfolio/presentation/contact/contact_screen.dart';
import 'package:portfolio/presentation/dashboard/dashboard_screen.dart';
import 'package:portfolio/presentation/home/home_screen.dart';
import 'package:portfolio/presentation/projects/projects_screen.dart';

import 'app_constants.dart';

final _parentKey = GlobalKey<NavigatorState>();
final _shellKey = GlobalKey<NavigatorState>();

final appRouter = GoRouter(
  navigatorKey: _parentKey,
  initialLocation: RoutesName.home,
  routes: [
    ShellRoute(
        navigatorKey: _shellKey,
        routes: [
          GoRoute(
            path: RoutesName.home,
            pageBuilder: (context, state) =>  const NoTransitionPage(child: HomeScreen()),
          ),
          GoRoute(
            path: RoutesName.about,
            pageBuilder: (context, state) =>  const NoTransitionPage(child: AboutScreen()),
          ),
          GoRoute(
            path: RoutesName.projects,
            pageBuilder: (context, state) =>  const NoTransitionPage(child: ProjectsScreen()),
          ),
          GoRoute(
            path: RoutesName.contact,
            pageBuilder: (context, state) =>  const NoTransitionPage(child: ContactScreen()),
          ),

        ],
        builder: (context, state, child) {
          return DashboardScreen(
            location: state.location,
            child: child,
          );
        }),
  ],
);
