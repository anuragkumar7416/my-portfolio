import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/cubit/app_cubit.dart';

class MagneticMouseRegion extends StatefulWidget {
  final Widget child;

  const MagneticMouseRegion({Key? key, required this.child}) : super(key: key);

  @override
  State<MagneticMouseRegion> createState() => _MagneticMouseRegionState();
}

class _MagneticMouseRegionState extends State<MagneticMouseRegion> {
  double x = 0.0;
  double y = 0.0;
  Color? hoverColor;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppState>(
      listener: (context, state) {
        if (state is ProjectHoverState) {
          hoverColor = state.projectHoverColor;
        }
      },
      builder: (context, state) {
        return Stack(
          children: [
            MouseRegion(
                onHover: (PointerHoverEvent event) {
                  setState(() {
                    x = !state.hoverState
                        ? (event.localPosition.dx - 20)
                        : (event.localPosition.dx - 50);
                    y = !state.hoverState
                        ? (event.localPosition.dy - 20)
                        : (event.localPosition.dy - 50);
                  });
                },
                child: widget.child),
            AnimatedPositioned(
              top: y,
              left: x,
              duration: const Duration(milliseconds: 150),
              child: MouseRegion(
                opaque: false,
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeIn,
                  width: !state.hoverState ? 40 : 100,
                  height: !state.hoverState ? 40 : 100,
                  decoration: BoxDecoration(
                      color: state.hoverState ? hoverColor : Colors.transparent,
                      border: Border.all(
                          color: state.hoverState
                              ? Colors.transparent
                              : Colors.black38,
                          width: 1.0),
                      borderRadius:
                          BorderRadius.circular(!state.hoverState ? 20 : 60)),
                  child: state.hoverState
                      ? const Center(
                          child: Text(
                          '  View\n Project',
                          style: TextStyle(color: Colors.white),
                        ))
                      : null,
                ),
              ),
            )
          ],
        );
      },
    );
  }
}
