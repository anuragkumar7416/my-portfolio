import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:portfolio/presentation/dashboard/widgets/drawer.dart';


import '../../app_constants.dart';
import 'cubit/dashboard_cubit.dart';

class DashboardScreen extends StatefulWidget {
  final Widget child;
  final String location;

  const DashboardScreen({Key? key, required this.child, required this.location})
      : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {


  int getCurrentIndex() {
    switch (widget.location) {
      case RoutesName.resume:
        return 1;
      case RoutesName.projects:
        return 2;
      case RoutesName.contact:
        return 3;

      default:
        return 0;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DashboardCubit(),
      child: BlocBuilder<DashboardCubit, DashboardState>(
        builder: (context, state) {
          return LayoutBuilder(
            builder: (context, dimens) {
              return Scaffold(
                backgroundColor: Colors.white,
                body: Row(
                  children: [
                    NavigationDrawerWidget(currentIndex: getCurrentIndex(),),

                    Expanded(child: widget.child),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
