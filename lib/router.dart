import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio/presentation/dashboard/dashboard_screen.dart';


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
      builder:(context,state)=> Container(child: Text('hello'),),
              ),
          GoRoute(
              path: RoutesName.about,
            builder:(context,state)=> Container(child: Text('hello'),),),
          GoRoute(
              path: RoutesName.contact,
            builder:(context,state)=> Container(child: Text('hello'),),),
          GoRoute(
              path: RoutesName.projects,
            builder:(context,state)=> Container(child: Text('hello'),),),
        ],
        builder: (context, state, child) {
          return DashboardScreen(location: state.location,child: child,);
        }),
  ],
);


