import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:portfolio/presentation/dashboard/widgets/drawer.dart';
import 'package:portfolio/presentation/dashboard/widgets/magnetic_mouse_region.dart';

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
    double maxWidth = MediaQuery.of(context).size.width;
    return BlocProvider(
      create: (context) => DashboardCubit(),
      child: BlocBuilder<DashboardCubit, DashboardState>(
        builder: (context, state) {
          return Scaffold(
            backgroundColor: Colors.white,
            appBar:  maxWidth > 1210?null:AppBar(backgroundColor: Colors.white,
              foregroundColor: Colors.black,

            ),
            drawer: maxWidth > 1210
                ? null
                : NavigationDrawerWidget(
                    currentIndex: getCurrentIndex(),
                  ),
            body: LayoutBuilder(builder: (context, dimens) {
              if (dimens.maxWidth > 1210) {
                return Row(
                  children: [
                    NavigationDrawerWidget(
                      currentIndex: getCurrentIndex(),
                    ),
                    Expanded(
                        child: MagneticMouseRegion(
                      child: widget.child,
                    )),
                  ],
                );
              } else {
                return MagneticMouseRegion(
                  child: widget.child,
                );
              }
            }),
          );
        },
      ),
    );
  }
}
